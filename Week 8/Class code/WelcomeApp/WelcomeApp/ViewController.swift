//
//  ViewController.swift
//  WelcomeApp
//
//  Created by Dylan Sprague on 2019-07-03.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameText: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var lastNameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: Any) {
        outputLabel.text = "Welcome " + firstNameText.text! + " " + lastNameText.text!
    }
    
}

