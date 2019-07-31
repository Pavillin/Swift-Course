//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
// Array_Filter_Map_Reduce.playground:
//Demonstrating Array methods filter, map, reduce and sorted

// Array of Ints to filter, map and reduce
let values = [3, 10, 6, 1, 4, 8, 2, 5, 9, 7]
let names = ["Java", "PHP", "Swift"]

print("values: \(values.description)")


// filter: even values displayed in sorted order

let evenValues = values.filter({$0 % 2 == 0})
print("Even values extracted: \(evenValues.description)")

let evenValuesSorted = values.filter({$0 % 2 == 0}).sorted(by:<)
print("Even values sorted: \(evenValuesSorted.description)")

// Loops over a collection and applies the same operation to each element
//map: square each value then sort the squares
let squaresOfValues = values.map({$0 * $0})
print("Squares of values: \(squaresOfValues.description)")
let squaresOfValuesSorted = values.map({$0 * $0}).sorted(by: <)
print("Squares of values sorted: \(squaresOfValuesSorted.description)")

// reduce: sum the elements of values
let sumOfValues = values.reduce(0, {$0 + $1})
print("Sum of values: \(sumOfValues)")

// Chaining - filter, map and reduce: sum the squares of the even integers
let sumOfSquares =
    values.filter({$0 % 2 == 0})
        .map({$0 * $0})
        .reduce(0, {$0 + $1})
print("Sum of the even value squares: \(sumOfSquares)")


// Dictionary example: Instructor's gradebook
import Foundation

let gradeBook = [
    "Susan" : [92, 85, 100], // name : Array of grades
    "Eduardo" : [83, 95, 79],
    "Azizi" : [91, 89, 82],
    "Pantipa" : [97, 91, 92]
]
var allGradesTotal = 0.0
var allGradesCount = 0

// uses reduce and a closure
for (student, grades) in gradeBook {
    let total = Double(grades.reduce(0, {$0 + $1}))
    print("AVERAGE GRADE FOR \(student): " +
        String(format: "%.2f", total / Double(grades.count)))
    allGradesTotal += total
    allGradesCount += grades.count
}

// String formatting
print("AVERAGE GRADE FOR ALL STUDENTS: " +
    String(format: "%.2f", allGradesTotal / Double(allGradesCount)))














