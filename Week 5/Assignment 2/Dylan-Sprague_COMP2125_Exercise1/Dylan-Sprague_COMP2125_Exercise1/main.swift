//
//  main.swift
//  Dylan-Sprague_COMP2125_Exercise1
//
//  Created by Hannah on 2019-06-18.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

//Test BankAccount class
var acc1 = BankAccount(accountNumber: 1, customerName: "Dylan", interestRate: 1.7, accountBalance: 3564.67);
var acc2 = BankAccount(accountNumber: 2, customerName: "Bob", interestRate: 5, accountBalance: 5);

print(acc1.description);
print(acc2.description);

//Test BankAccountExtension class
var acc3 = BankAccount(accountNumber: 3, name: "Luke", balance: 342.13);

print(acc3.description)
