//
//  ViewController.swift
//  CustomTipLab
//
//  Created by Dylan Sprague on 2019-07-03.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var customTipLabel: UILabel!
    @IBOutlet weak var defaultTipLabel: UILabel!
    @IBOutlet weak var defaultTipTotalLabel: UILabel!
    @IBOutlet weak var customTipAmountLabel: UILabel!
    @IBOutlet weak var customTipTotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TipPercentSlider(_ sender: UISlider) {
        sliderValueLabel.text = String(Int(sender.value)) + "%"
        customTipLabel.text = String(Int(sender.value)) + "%"
        //defaultTipLabel.text = String(0.15*billAmountText)
    }
    
}

