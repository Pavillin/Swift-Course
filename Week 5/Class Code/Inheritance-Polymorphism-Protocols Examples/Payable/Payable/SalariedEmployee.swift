// SalariedEmployee.swift
// CommissionEmployee class
import Foundation

public class SalariedEmployee : Employee {
    public var weeklySalary: NSDecimalNumber!
    
    // failable initializer
    public init?(name: String, weeklySalary: NSDecimalNumber) {
        super.init(name: name) // initialize inherited property
            
        // if any arguments are invalid, return nil
        if weeklySalary.compare(NSDecimalNumber.zero) ==
            ComparisonResult.orderedAscending {
       // meaning of the above - if weeklySalary is less than 0, ComparisonResult.orderedAscending means first operand is less than second
            return nil // an initializer argument was invalid, so fail
        }
        
        self.weeklySalary = weeklySalary
    }
    
    // earnings computed property
    public override var earnings: NSDecimalNumber {
        return weeklySalary
    }
    
    // description computed property
    public override var description: String {
        return String(format:"%@: %@\n%@: %@",
            "Salaried Employee", super.description,
            "Weekly Salary", formatAsCurrency(number: weeklySalary))
    }
}

