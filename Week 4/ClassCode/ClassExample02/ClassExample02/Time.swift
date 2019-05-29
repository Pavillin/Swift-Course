//
//  Time.swift
//  ClassExample02
//
//  Created by Sujeet Lohan on 2019-05-28.
//  Copyright © 2019 Georgian College. All rights reserved.
//

import Foundation

// Time class with default initializer and property observers
public class Time {
    // an hour value in the range 0-23
    public var hour: Int = 0 {
        willSet {
            print("hour is \(hour); setting it to \(newValue)")
        }
        didSet {
            if hour < 0 || hour > 23 {
                print("hour invalid, resetting to \(oldValue)")
                hour = oldValue
            }
        }
    }
    
    // a minute value in the range 0-59
    public var minute: Int = 0 {
        willSet {
            print("minute is \(minute); setting it to \(newValue)")
        }
        didSet {
            if minute < 0 || minute > 59 {
                print("minute invalid, resetting to \(oldValue)")
                minute = oldValue
            }
        }
    }
    
    // a second value in the range 0-59
    public var second: Int = 0 {
        willSet {
            print("second is \(second); setting it to \(newValue)")
        }
        didSet {
            if second < 0 || second > 59 {
                print("second invalid, resetting to \(oldValue)")
                second = oldValue
            }
        }
    }
    
    // convert to String in universal-time format (HH:MM:SS)
    public var universalDescription: String {
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
    
    // convert to String in standard-time format (H:MM:SS AM or PM)
    public var description: String {
        return String(format: "%d:%02d:%02d %@",
                      ((hour == 0 || hour == 12) ? 12 : hour % 12),
                      minute, second, (hour < 12 ? "AM" : "PM"))
    }
}
