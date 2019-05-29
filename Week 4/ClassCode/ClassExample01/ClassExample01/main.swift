//
//  main.swift
//  ClassExample01
//
//  Created by Sujeet Lohan on 2019-05-28.
//  Copyright © 2019 Georgian College. All rights reserved.
//

import Foundation

//Testing the class by creating objects

let account1 = Account(name: "Sujeet Lohan", balance: 50.00)
print(account1.name)
print(account1.description)
account1.balance = 125.00
print(account1.description)
