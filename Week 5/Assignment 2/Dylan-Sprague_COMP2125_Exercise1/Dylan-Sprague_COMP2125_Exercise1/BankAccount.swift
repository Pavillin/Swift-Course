//
//  BankAccount.swift
//  Dylan-Sprague_COMP2125_Exercise1
//
//  Created by Hannah on 2019-06-18.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Cocoa

public class BankAccount {
    public var accountNumber: String!
    public var customerName: String!
    public var yearlyInterestRate: NSDecimalNumber!
    public var accountBalance: NSDecimalNumber!
    
    // failable initializer
    public init?(accountNumber: String, customerName: String, yearlyInterestRate: NSDecimalNumber, accountBalance: NSDecimalNumber) {
        
        // if any arguments are invalid, return nil
        if accountNumber.isEmpty {
            return nil
        }
        
        // if any arguments are invalid, return nil
        if customerName.isEmpty {
            return nil
        }
        
        // if any arguments are invalid, return nil
        if yearlyInterestRate.isLessThan(0) || yearlyInterestRate.isGreaterThan(2)
        {
            return nil
        }
        
        // if any arguments are invalid, return nil
        if accountBalance.isGreaterThan(10)
        {
            return nil
        }
        
        self.accountNumber = accountNumber
        self.customerName = customerName
        self.yearlyInterestRate = yearlyInterestRate
        self.accountBalance = accountBalance
    }
    
    // credit computed property
    public var credit: Double {
        var formattedCredit = String(format: "%.2f", Double(accountBalance.adding(NSDecimalNumber(value: self.credit))))
        return formattedCredit as! Double
    }//end of credit
    
    // debit computed property
    public var debit: Double {
        var formattedDebit = String(format: "%.2f", Double(accountBalance.subtracting(NSDecimalNumber(value: self.debit))))
        return formattedDebit as! Double
    }//end of debit
    
    // description computed property
    public var description: String {
        return accountNumber + customerName + String(yearlyInterestRate) + String(accountBalance)
    }//end of description
}
