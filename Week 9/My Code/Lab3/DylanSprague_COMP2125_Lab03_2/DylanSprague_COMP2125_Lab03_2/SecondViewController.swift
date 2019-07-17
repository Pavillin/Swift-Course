//
//  SecondViewController.swift
//  DylanSprague_COMP2125_Lab03_2
//
//  Created by Dylan Sprague on 2019-07-17.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var projectNameText: UITextField!
    @IBOutlet weak var projectDurationText: UITextField!
    @IBOutlet weak var outputText: UITextView!
    
    //user name from first view controller
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputText.text = userName+"\n"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        //updates text field with project name and duration
        outputText.text = "User Name: "+userName+"\nProject Name: "+projectNameText.text!+"\nProject Duration: "+projectDurationText.text!+" months"
    }
    
    @IBAction func backButton(_ sender: UIButton) {
    }
    


}
