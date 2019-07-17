//
//  ViewController.swift
//  DylanSprague_COMP2125_Lab03_2
//
//  Created by Dylan Sprague on 2019-07-17.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    //user name variable init
    var userNameText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func loginButton(_ sender: UIButton) {
        //prepares user name to be sent
        self.userNameText = usernameText.text!
        performSegue(withIdentifier: "userName", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //sends user name data to second view controller
        var TempVC:SecondViewController = segue.destination as! SecondViewController
        TempVC.userName = self.userNameText
    }
}

