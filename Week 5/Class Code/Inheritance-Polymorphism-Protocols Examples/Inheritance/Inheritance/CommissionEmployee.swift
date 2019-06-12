// CommissionEmployee.swift
// CommissionEmployee superclass is the hierarchy’s base class
import Foundation

public class CommissionEmployee {
    public var name: String!
    public var grossSales: NSDecimalNumber!
    public var commissionRate: NSDecimalNumber!
    
    // failable initializer
    public init?(name: String, grossSales: NSDecimalNumber,
        commissionRate: NSDecimalNumber) {

        // if any arguments are invalid, return nil
        if name.isEmpty ||
            (grossSales.compare(NSDecimalNumber.zero) ==
                ComparisonResult.orderedAscending) ||
            (commissionRate.compare(NSDecimalNumber.zero) ==
                ComparisonResult.orderedAscending) {
                
            return nil // an initializer argument was invalid, so fail
        }
        
        self.name = name
        self.grossSales = grossSales
        self.commissionRate = commissionRate
    }

    // earnings computed property
    public var earnings: NSDecimalNumber {
        return commissionRate.multiplying(by: grossSales)
    }
    
    // description computed property
    public var description: String {
        return String(format:"%@: %@\n%@: %@\n%@: %@",
            "Commission Employee", name,
            "Gross Sales", formatAsCurrency(number: grossSales),
            "Commission Rate", formatAsPercent(number: commissionRate))
    }
}

