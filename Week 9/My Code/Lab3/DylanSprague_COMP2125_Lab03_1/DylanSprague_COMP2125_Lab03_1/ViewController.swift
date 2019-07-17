//
//  ViewController.swift
//  DylanSprague_COMP2125_Lab03_1
//
//  Created by Dylan Sprague on 2019-07-17.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loanAmountText: UITextField!
    @IBOutlet weak var numberOfYearsText: UITextField!
    @IBOutlet weak var interestRateText: UITextField!
    @IBOutlet weak var detailsText: UITextView!
    
    var incrementValue: Float  = 0.25
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberOfYearsStepper(_ sender: UIStepper) {
        numberOfYearsText.text = String(Int(sender.value))
    }
    
    @IBAction func interestRateSlider(_ sender: UISlider) {
        //added an incrementing system
        let rndIncrement = round(sender.value / incrementValue) * incrementValue
        sender.value = rndIncrement
        interestRateText.text = String(sender.value)
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        //variables for the calculation
        var loanAmount: Float = Float(loanAmountText.text!)!
        var numOfYears: Float = Float(numberOfYearsText.text!)!
        var interestRate: Float = Float(interestRateText.text!)!
        var months = numOfYears * 12
        var totalLoan = loanAmount * interestRate * numOfYears / 100 + loanAmount
        var monthlyInstallment = totalLoan / months
        
        detailsText.text = "Total Loan Amount:  $"+String(totalLoan)+"\nMonthly Installment:  $"+String(monthlyInstallment)
    }
}

