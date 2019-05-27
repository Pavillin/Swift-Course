//: Playground - noun: a place where people can play
/* Definiton
 •	A Dictionary is a collection type that organizes its content by key-value pairs.
 •	The keys in a dictionary map onto values.
 •	The keys in a Dictionary must be unique.
 •	Items in a dictionary do not have a specified order
 */

import UIKit


//... Example 01.... Dictionay declaration and initialization
///*
var dict1: Dictionary<String, Double> = [:]
var dict2 = Dictionary<String, Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()
//*/

//... Example 02.... Dictionay declaration and initialization
///*
var dict5: Dictionary<String, Double> = [:]
var dict6 = Dictionary<Double, Double>()
var dict7: [Int:String] = [:]
var dict8 = [Int:Int]() // using initializers
var dict9: [String:String] = [:]
//*/

//... Example 03.... Creating a dictionary:
/*
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
*/

//You created a mutable dictionary using the Dictionary literal syntax
// Empty dictionary:
/*..
var empDict = [Int: String]()
var courseDict:[Int:String] = [101:"Java", 102:"PHP", 103:"Swift"]
var courseName = courseDict[101]  // Java will be assigned to courseName
..*/

// ... Example 04... Using count property to count number of elements in the dictionary
/*..
var filmRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(filmRatings.count) movies.")
..*/

// ... Example 05... Reading a value from the dictionary
/*..
var cineRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(cineRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]
print(darkoRating!)
..*/

// ... Example 06... Modifying a value:
/*..
var coursesDict:[Int:String] = [101:"Java", 102:"PHP", 103:"Swift"]
coursesDict[102] = "CSharp"  // value will be updated
print(coursesDict[102]) // you will see the optional word
print(coursesDict[102]!)
print("\(coursesDict[102])")
..*/

// ... Example 06...Updating a value:
//Example - (a)
/*..
var coursesDict:[Int:String] = [101:"Java", 102:"PHP", 103:"Swift"]
var oldVal = coursesDict.updateValue("Android", forKey: 101)
print( "Old value of key = 101 is \(oldVal)" )         // print old value - Java
print( "Value of key = 101 is \(coursesDict[101])" )      // print new value - Android
oldVal = coursesDict.updateValue("Python", forKey: 102)
print( "Old value of key = 102 is \(oldVal)" )         // print old value - PHP
print( "Value of key = 102 is \(coursesDict[102])" )
..*/

//Example - (b)
/*..
var pictureRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]

print("I have rated \(pictureRatings.count) movies.")

let darkoMovieRating = pictureRatings["Donnie Darko"]

pictureRatings["Dark City"] = 5

let oldRating: Int? = pictureRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = pictureRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}
..*/

// ... Example 07...Adding and Removing Values:
/*..
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
movieRatings["The Cabinet of Dr. Caligari"] = 5 // a new key-value pair is added
movieRatings.removeValue(forKey: "Dark City") // the entry for key "Dark City" is removed
movieRatings["Dark City"] = nil  // setting to nil
..*/

// ... Example 08..Looping through dictionary:
/*..
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating {
    print(lastRating)
}
movieRatings["The Cabinet of Dr. Caligari"] = 5
movieRatings["Dark City"] = nil

for (key, value) in movieRatings {
    print("The movie \(key) is rated \(value).")
}
..*/

//... Example 09..Looping through keys and values

/*..
var productRatings = ["Apple": 9, "Samsung": 7, "Sony": 5, "Sharp":4]

for product in productRatings.keys
{
    print("Product Keys: \(product).")
}

for product in productRatings.values
{
    print("Product Values: \(product).")
}
..*/

//... Example 10..Sending keys and values to an Array
/*..
let keysMovies = Array(movieRatings.keys)
print(keysMovies.description)

let valuesMovies = Array(movieRatings.values)
print(valuesMovies.description)
..*/


//... Example 10..Creating an immutable dictionary
/*..
let album = ["Diet Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleaning Service": 187,
             "Track 4": 221]
..*/








