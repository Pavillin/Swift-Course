//
//  ViewController.swift
//  TipCalculatorApp
//
//  Created by Dylan Sprague on 2019-07-03.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderOutputLabel: UILabel!
    @IBOutlet weak var switchOutputLabel: UILabel!
    @IBOutlet weak var stepperOutputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func taxPercentSlider(_ sender: UISlider) {
        sliderOutputLabel.text = String(Int(sender.value))
    }
    @IBAction func notificationSwitch(_ sender: UISwitch) {
        if sender.isOn{
            switchOutputLabel.text = "ON"
            switchOutputLabel.backgroundColor = UIColor.green
        }else{
            switchOutputLabel.text = "OFF"
            switchOutputLabel.backgroundColor = UIColor.red
        }
    }
    @IBAction func incrementStepper(_ sender: UIStepper) {
        stepperOutputLabel.text = String(sender.value)
    }
}

