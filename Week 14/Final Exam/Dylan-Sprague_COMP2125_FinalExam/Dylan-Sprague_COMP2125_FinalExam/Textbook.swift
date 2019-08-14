//
//  Textbook.swift
//  Dylan-Sprague_COMP2125_FinalExam
//
//  Created by Dylan Sprague on 2019-08-14.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import Foundation

class Textbook {
    
    //product variables
    let title: String
    let author: String
    let publisher: String
    let edition: String
    let price: String
    let image: String
    
    //initializing product
    init(title: String, author: String, publisher: String, edition: String, price: String, image: String) {
        self.title = title
        self.author = author
        self.publisher = publisher
        self.edition = edition
        self.price = price
        self.image = image
    }
}
