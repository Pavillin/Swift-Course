//
//  Circle.swift
//  ComputedProperties
//
//  Created by Sujeet Lohan on 2019-05-28.
//  Copyright © 2019 Georgian College. All rights reserved.
//

import Foundation
// Circle class with read-write computed properties
import Darwin

public class Circle {
    public var radius: Double = 0.0
    
    // computes diameter or sets radius based on new diameter
    public var diameter: Double {
        get {
            return 2.0 * radius
        }
        set {
            radius = newValue / 2.0
        }
    }
    
    // computes circumference or sets radius based on new circumference
    public var circumference: Double {
        get {
            return .pi * diameter
        }
        set {
            radius = newValue / (2.0 * M_PI)
        }
    }
    
    // computes area or sets radius based on new area
    public var area: Double {
        get {
            return M_PI * radius * radius
        }
        set {
            radius = sqrt(newValue / M_PI)
        }
    }
}
