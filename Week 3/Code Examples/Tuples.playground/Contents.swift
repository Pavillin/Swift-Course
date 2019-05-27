//: Tuples Examples
// Definition ..
/*
A tuple is a group of zero or more values represented as one value.
For example ("John", "Smith") holds the first and last name of a person. 
You can access the inner values using the dot(.) notation followed by the index of the value:
*/

// ...Example ..
var person = ("John", "Smith")
var firstName = person.0 // John
var lastName = person.1 // Smith

// ...Example ..
var employee2 = ("John", "Paul", "Smith")
var employee2FirstName = employee2.0 // John
var employee2MiddleName = employee2.1 // Paul
var employee2LastName = employee2.2 // Smith

// printing the value of a tuple
print(person.0)
print(person.1)

var employee = (firstName: "John", lastName: "Smith")

 firstName = employee.firstName // John
 lastName = employee.lastName // Smith

var student = (firstName: "John", lastName: "Smith")
var (first, last) = employee

 firstName = first
 lastName =  last

// Another example
var (a, b, c) = (1, 2, 3)
(a, b) = (b, a)

// Returning multiple values by a function using tuple
func divmod(_ a: Int, _ b:Int) -> (Int, Int) {
    return (a / b, a % b)
}

divmod(7, 3) // (2, 1)
divmod(5, 2) // (2, 1)
divmod(12, 4) // (3, 0)
var num1 = 10
var num2 = 20
divmod(num1, num2)

// ....Example .. Tuples with Switch ...case

//var statusCode: Int = 204
var statusCode: Int = 418
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " Redirection, \(statusCode)."
case 400...417:
    errorString += " Client error, \(statusCode)."
case 500...505:
    errorString += " Server error, \(statusCode)."
case let unknownCode where (unknownCode >= 200 && unknownCode < 300)
    || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
default:
    errorString = "Unknown error encountered."
}

let error = (statusCode, errorString) // defining a tuple

error.0 // Accessing the first value
error.1 // Accessing second value

let firstErrorCode = 200
let secondErrorCode = 404
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("All items found.")
case (404, _):
    print("First item found.")
case (_, 404):
    print("Second item found.")
default:
    print("All items found.")
}



