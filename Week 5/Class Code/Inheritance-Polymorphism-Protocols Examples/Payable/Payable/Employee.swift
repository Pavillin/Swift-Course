// Employee.swift
// Employee class that conforms to the Payable protocol via extensions
import Foundation

public class Employee {
    public var name: String!
    
    // failable initializer: if name is empty, return nil
    public init?(name: String) {
        if name.isEmpty {
            return nil
        }
        
        self.name = name
    }
    
    // earnings computed property
    public var earnings: NSDecimalNumber {
        return NSDecimalNumber.zero
    }
    
    // description computed property
    public var description: String {
        return name
    }
}

// add Payable conformance to entire Employee hierarchy
extension Employee : Payable {
    var paymentAmount: NSDecimalNumber {
        return earnings
    }
}


