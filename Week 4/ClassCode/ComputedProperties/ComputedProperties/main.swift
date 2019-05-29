//
//  main.swift
//  ComputedProperties
//
//  Created by Sujeet Lohan on 2019-05-28.
//  Copyright © 2019 Georgian College. All rights reserved.
//

import Foundation

// Using read-write computed properties

// displays a Circle's data
func displayCircle(_ circle: Circle) {
    print("Radius: \(circle.radius)")
    print("Diameter: \(circle.diameter)")
    print("Circumference: \(circle.circumference)")
    print("Area: \(circle.area)")
}

let circle = Circle() // creating a circle object
circle.radius = 10.0

print("CIRCLE AFTER SETTING RADIUS TO 10.0")
displayCircle(circle)

circle.diameter = 10.0
print("\nCIRCLE AFTER SETTING DIAMETER TO 10.0")
displayCircle(circle)

circle.area = 10.0
print("\nCIRCLE AFTER SETTING AREA TO 10.0")
displayCircle(circle)

circle.circumference = 10.0
print("\nCIRCLE AFTER SETTING CIRCUMFERENCE TO 10.0")
displayCircle(circle)

