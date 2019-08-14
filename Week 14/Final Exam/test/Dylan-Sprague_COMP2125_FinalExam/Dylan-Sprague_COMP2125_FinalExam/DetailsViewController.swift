//
//  DetailsViewController.swift
//  Dylan-Sprague_COMP2125_FinalExam
//
//  Created by Dylan Sprague on 2019-08-14.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    //Labels for the output of product information
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var authorLbl: UILabel!
    @IBOutlet weak var publisherLbl: UILabel!
    @IBOutlet weak var editionLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting the texts to display product info
        titleLbl.text = textbooks[myIndex].title
        authorLbl.text = textbooks[myIndex].author
        publisherLbl.text = textbooks[myIndex].publisher
        editionLbl.text = textbooks[myIndex].edition
        priceLbl.text = textbooks[myIndex].price
        imageView.image = UIImage(named: textbooks[myIndex].image)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
