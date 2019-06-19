//
//  HourlyEmployee.swift
//  Polymorphism
//
//  Created by Dylan on 2019-06-18.
//

import Foundation

public class HourlyEmployee : Employee {
    public var hoursWorked: Int!
    public var ratePerHour: NSDecimalNumber!
    
    //failable initializer
    public init?(name: String, hoursWorked: Int, ratePerHour: NSDecimalNumber!) {
        
        super.init(name: name) // initialize inherited property
        
        // if any arguments are invalid, return nil
        if (ratePerHour.compare(NSDecimalNumber.zero) == ComparisonResult.orderedAscending) || (hoursWorked < 0) || (hoursWorked > 72)
        {
            return nil // an initializer argument was invalid, so fail
        }
        
        self.hoursWorked = hoursWorked
        self.ratePerHour = ratePerHour
    }
    
    // earnings computed property
    public override var earnings: NSDecimalNumber {
        if(hoursWorked > 40){
            let extraHours = hoursWorked - 40
            let baseEarning = ratePerHour.multiplying(by: 40)
            let otRate = ratePerHour.multiplying(by: 1.5)
            let otEarning = otRate.multiplying(by: NSDecimalNumber(value: extraHours))
            return baseEarning.adding(otEarning)
        }else{
            return ratePerHour.multiplying(by: NSDecimalNumber(nonretainedObject: hoursWorked))
            
        }
    }
    
    //description computed property
    public override var description: String {
        return String(format: "%@: %@\n%@: %@\n%@: %@",
                      "Hourly Employee", super.description,
                      "Hours Worked", hoursWorked,
                      "Rate Per Hour", formatAsCurrency(number: ratePerHour))
    }
    
}
