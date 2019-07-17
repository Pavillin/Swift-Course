//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Sujeet Lohan on 2019-07-17.
//  Copyright © 2019 Sujeet Lohan. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  // define list of item for the cell
    let coursesList = ["Swift", "Java", "PHP", "Python"]
    
//    let cityList = ["Toronto", "Barrie", "Mississauga", "Montreal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    } // end method
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return coursesList.count
        
    } // end func

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "courseCell")
        cell.textLabel?.text = coursesList[indexPath.row]
        return cell
    } // end func
}

