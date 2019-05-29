//
//  Account.swift
//  ClassExample01
//
//  Created by Sujeet Lohan on 2019-05-28.
//  Copyright © 2019 Georgian College. All rights reserved.
//
// Introduction to Classes
// Objects
// Functions
// Methods
// Access Modifiers .. public, internal and private
import Foundation
// Account class with name and balance properties,
// an initializer and deposit and withdraw methods
public class Account {
    public var name: String = "" // properties must be initialized
    
    public var balance: Double = 0.0
    // balance is public, but its setter can be used only in class Account
    //public private(set) var balance: Double = 0.0
    
    // initializer equivalent to constructor in java and C#
    public init(name: String, balance: Double) {
        self.name = name
        
        // validate that balance is greater than 0.0; if not,
        // property balance keeps its initial value of 0.0
        if balance > 0.0 {
            self.balance = balance
        }
    }
    
    // deposit (add) a valid amount into the Account
    public func deposit(_ amount: Double) {
        // if amount is valid, add it to the balance
        if amount > 0.0 {
            balance = balance + amount
        }
    } // end func deposit
    
    // withdraw (subtract) a valid amount from the Account
    public func withdraw(_ amount: Double) {
        // if amount is valid, and the balance will not
        // become negative, subtract it from the balance
        if amount > 0.0 {
            if  balance - amount >= 0.0 {
                balance = balance - amount
            }
        }
    } // end func withdraw
    
    // function to return String representation of an Account's information
   public  var description: String {
        get {
            return "Name: \(name) \nBalance: \(balance)"
            }
        }
} // end class
