import Cocoa

// GenericFunction.playground
// Printing Array elements using a generic function.

// print an Array
func printArray<T>(values: [T]) {
    print("[")
    for i in 0..<values.count {
        print("\(values[i]), ")
    }
    print("]")
}

func printVal<T>(value: T) {
    print("\(value)")
}

let intVal = 1
let doubleVal = 1.1
let courseVal = "Swift"
printVal(value: intVal)
printVal(value: doubleVal)
printVal(value: courseVal)
// create Arrays
let emptyIntegers: [Int] = []
let integers = [1, 2, 3, 4, 5, 6, 7]
let doubles = [1.1, 2.2, 3.3, 4.4]
let courses = ["Swift", "Java", "Python"]

print("emptyIntegers contains: ")
printArray(values: emptyIntegers) // pass empty Int Array
print("\nintegers contains: ")
printArray(values:integers) // pass Int Array
print("\ndoubles contains: ")
printArray(values: doubles) // pass Double Array
print("\ncources contains: ")
printArray(values: courses) // pass Double Array

print()
