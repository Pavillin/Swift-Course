//
//  BankAccountExtension.swift
//  Dylan-Sprague_COMP2125_Exercise1
//
//  Created by Dylan on 2019-06-18.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

extension BankAccount{
    var interest: Double{
        get{
            return self.interestRate * self.accountBalance;
        }
    }
    
    public convenience init(accountNumber: Int, name: String, balance: Double ) {
        self.init(accountNumber: accountNumber, customerName: name,  interestRate: 0.0, accountBalance: balance);
    }}
