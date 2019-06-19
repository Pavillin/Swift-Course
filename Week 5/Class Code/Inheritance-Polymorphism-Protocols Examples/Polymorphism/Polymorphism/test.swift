//
//  test.swift
//  Polymorphism
//
//  Created by Hannah on 2019-06-18.
//  Copyright © 2019 Deitel & Associates, Inc. All rights reserved.
//

import Foundation

public class test : Employee{
    public var ratePerHour: Double! = 10.0;
    
    public var hoursWorked: Double!{
        didSet{
            if hoursWorked < 0 && hoursWorked > 72 {
                print("Wrong value! - hoursWorked; Resetting");
                hoursWorked = oldValue;
            }
        }
    }
    
    public override var description: String{
        get{
            return "Name: \(String(describing: super.name)); Worked Hours \(String(describing: self.hoursWorked)); Salary: \(self.earnings); Rate Per Hour: \(String(describing: self.ratePerHour)) ";
        }
    }
    
    public override var earnings: NSDecimalNumber{
        if(self.hoursWorked > 40){
            return NSDecimalNumber(value: 40 * ratePerHour + (hoursWorked - 40 * ratePerHour * 1.5));
        }else{
            return NSDecimalNumber(value: self.hoursWorked * self.ratePerHour);
        }
        
    }
    
    public init?(name: String, hoursWorked: Double, ratePerHour: Double){
        super.init(name: name)
        
        self.hoursWorked = hoursWorked;
        self.ratePerHour = ratePerHour
        
    }}
