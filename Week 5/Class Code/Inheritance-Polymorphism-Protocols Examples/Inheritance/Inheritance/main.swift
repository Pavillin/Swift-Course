// main.swift
// Testing the CommissionEmployee-BasePlusCommissionEmployee hierarchy
import Foundation

// create and test a CommissionEmployee
let commissionEmployee =
    CommissionEmployee(name: "Sue Jones",
        grossSales:NSDecimalNumber(string: "-10000.00"),
        commissionRate: NSDecimalNumber(string: "0.06"))

// get commission employee data
if let employee = commissionEmployee {
    print("COMMISSION EMPLOYEE DATA VIA PROPERTIES")
    print("Name: \(employee.name)")
    print("Gross Sales: \(formatAsCurrency(number: employee.grossSales))")
    print("Commission Rate: \(formatAsPercent(number: employee.commissionRate))")
    print("Earnings: \(formatAsCurrency(number: employee.earnings))")

    employee.grossSales = NSDecimalNumber(string: "5000.00")
    employee.commissionRate = NSDecimalNumber(string: "0.10")
    print("\nAFTER UPDATING GROSSSALES AND COMMISSIONRATE")
    print(employee.description)
    print("Updated Earnings: \(formatAsCurrency(number: employee.earnings))")
}

// create and test a BasePlusCommissionEmployee
let basePlusCommissionEmployee =
    BasePlusCommissionEmployee(name: "Bob Lewis",
        grossSales:NSDecimalNumber(string:"5000.00"),
        commissionRate: NSDecimalNumber(string: "0.04"),
        baseSalary: NSDecimalNumber(string: "300.00"))

// get commission employee data
if let employee = basePlusCommissionEmployee {
    print("\nBASE PLUS COMMISSIONEMPLOYEE DATA VIA PROPERTIES")
    print("Name: \(employee.name)")
    print("Gross Sales: \(formatAsCurrency(number: employee.grossSales))")
    print("Commission Rate: \(formatAsPercent(number: employee.commissionRate))")
    print("Base Salary: \(formatAsCurrency(number: employee.baseSalary))")
    print("Earnings: \(formatAsCurrency(number: employee.earnings))")
    
    employee.baseSalary = NSDecimalNumber(string: "1000.00")
    print("\nAFTER UPDATING BASESALARY")
    print(employee.description)
    print("Updated Earnings: \(formatAsCurrency(number: employee.earnings))")
}

