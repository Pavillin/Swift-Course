//
//  bacc.swift
//  Dylan-Sprague_COMP2125_Exercise1
//
//  Created by Hannah on 2019-06-18.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

public class bacc {
    private var accountNumber: Int{
        didSet{
            if(accountNumber < 0){
                print("Account number is invalid! Setting it back to \(oldValue)")
                accountNumber = oldValue;
            }
        }
    }
    private var customerName: String{
        didSet{
            if(customerName == ""){
                print("Account number is invalid! Setting it back to \(oldValue)")
                customerName = oldValue;
            }
        }
    }
    var interestRate: Double{
        didSet{
            if(interestRate < 0.0 || interestRate > 2.0){
                print("Interest rate is invalid! Setting it back to \(oldValue)")
                interestRate = oldValue;
            }
        }
    };
    var accountBalance: Double{
        willSet{
            print("Setting account balance to \(newValue)...")
        }
        didSet{
            if (accountBalance < 10.0) {
                print("Account balance is invalid! Setting it back to \(oldValue)")
                accountBalance = oldValue;
            }
        }
    }
    public var description: String{
        get{
            return "Account Number: \(accountNumber); Customer Name:  \(customerName); Interest Rate:  \(interestRate); Account Balance:  \(accountBalance)";
            
        }
    }
    
    public init(){
        accountNumber = 1;
        customerName = "Default";
        interestRate = 0.0;
        accountBalance = 10.0;
    }
    public init(accountNumber: Int, customerName: String, interestRate: Double, accountBalance: Double){
        self.accountNumber = accountNumber;
        self.customerName = customerName;
        self.interestRate = interestRate;
        self.accountBalance = accountBalance;
    }
    
    deinit {
        self.customerName = "Deinitialized";
    }
    
    public func credit(amount: Double){
        self.accountBalance += amount;
    }
    public func debit(amount: Double){
        self.accountBalance -= amount;
    }
}
