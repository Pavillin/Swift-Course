//: Playground - noun: a place where people can play
// Examples of Set - Swift Programming
/* Few things about the Sets
 
What is a Set?
    •	A Set is an unordered collection of distinct instances.
        •	This definition sets it apart from an Array, which is ordered and can accommodate repeated values.
        •	For example, an array could have the following content: [2, 2, 2, 2], but a set cannot.
        •	A Set has some strong similarities to a Dictionary, but is also a little different.
        •	Like Dictionary, a set’s values are unordered within the collection.
        •	Similar to the requirement that a dictionary’s keys must be unique, Set does not allow repeated values.
        •	In order to ensure that elements are unique, Set requires that its elements conform to the protocol Hashable just as a dictionary’s keys do.
        •	However, while dictionary values are accessed via their corresponding key, a set only stores individual elements, not key-value pairs.
*/

import UIKit

// ..... Example 01: .... Initializing a Set
/*
var groceryBag = Set<String>(["Apples", "Oranges", "Pineapple"])
var stationaryBag: Set = ["Pen", "Pencil", "Folder"]
var computerParts: Set<String> // empty set
*/

// ..... Example 02: .... Adding to set

/*
var groceryBag = Set<String>()
groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")

var stationaryBag = Set<String>()
stationaryBag.insert("Pen")
stationaryBag.insert("Pencil")
stationaryBag.insert("Eraser")

var shoppingCart = Set<String>()
shoppingCart.insert("Pant")
shoppingCart.insert("Shoes")
shoppingCart.insert("Shirt")
*/


// ..... Example 03: .... Looping through a set:
/*
var groceryBag = Set<String>()
groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")

for food in groceryBag {
    print(food)
}
*/

// ..... Example 04: .... Check if an item is present

/*..
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
// using for ..in to loop through the set
for food in groceryBag {
    print(food)
}

let hasItem = groceryBag.contains("Bananas") // here hasItem is false
print(hasItem)
let groceryItem = groceryBag.contains("Apples") // here groceryItem is true
print(groceryItem)
..*/

// ..... Example 05: ....Unions of Sets ..Combining sets
/*..
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
var groceryBagCopy = groceryBag // Assigning one set to another
for food in groceryBag {
    print(food)
}
let hasBananas = groceryBag.contains("Bananas")
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)
..*/


// ..... Example 06: ....Intersecting sets:
/*
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
for food in groceryBag {
    print(food)   }
let hasBananas = groceryBag.contains("Bananas")
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)
let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)
*/



