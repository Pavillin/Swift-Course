//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Dylan Sprague on 2019-07-03.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1Text: UITextField!
    @IBOutlet weak var num2Text: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var num1: Double = 0.0
    var num2: Double = 0.0
    var sum: Double = 0.0
    
    @IBAction func addButton(_ sender: Any) {
        num1 = Double(num1Text.text!)!
        num2 = Double(num2Text.text!)!
        sum = num1+num2
        outputLabel.text = String(sum)
    }
    @IBAction func subtractButton(_ sender: Any) {
        num1 = Double(num1Text.text!)!
        num2 = Double(num2Text.text!)!
        sum = num1-num2
        outputLabel.text = String(sum)
    }
    @IBAction func multiplyButton(_ sender: Any) {
        num1 = Double(num1Text.text!)!
        num2 = Double(num2Text.text!)!
        sum = num1*num2
        outputLabel.text = String(sum)
    }
    @IBAction func divideButton(_ sender: Any) {
        num1 = Double(num1Text.text!)!
        num2 = Double(num2Text.text!)!
        sum = num1/num2
        outputLabel.text = String(sum)
    }
}

