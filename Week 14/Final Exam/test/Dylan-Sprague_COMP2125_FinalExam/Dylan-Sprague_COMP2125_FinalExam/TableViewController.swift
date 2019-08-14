//
//  TableViewController.swift
//  Dylan-Sprague_COMP2125_FinalExam
//
//  Created by Dylan Sprague on 2019-08-14.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit
//setting up the array of products
var myIndex = 0
var textbooks = [Textbook(title: "Programming Fundamentals with Swift",author: "Matt Neuburg", publisher: "Oreilly", edition: "3rd", price: "$51.75 ", image: "Oreilly.PNG"),
                 Textbook(title: "The Swift Programming", author: "Matthew and John", publisher: "Big Nerd Ranch", edition: "6th", price: "$30.50", image: "BigNerdRanch.PNG"),
                 Textbook(title: "The Swift Essentials", author: "Academy", publisher: "Kindle", edition: "4th", price: "$40.50", image: "Essentials.PNG"),
                 Textbook(title: "The Mastering Swift", author: "Jon Hoffman", publisher: "McGraw Hill", edition: "2nd", price: "$60.00", image: "Mastering.PNG"),
                 Textbook(title: "Swift for Programmers", author: "Paul Deitel", publisher: "Pearson", edition: "3rd", price: "$42.30", image: "Deitel.PNG")
]

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textbooks.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dynamicCell", for: indexPath)
        let textbook = textbooks[indexPath.row]
        
        cell.textLabel?.text = textbook.title
        
        cell.imageView?.image = UIImage(named: textbook.image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        
    }
    
    
    
}

