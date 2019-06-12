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

// create Arrays
let emptyIntegers: [Int] = []
let integers = [1, 2, 3, 4, 5, 6, 7]
let doubles = [1.1, 2.2, 3.3, 4.4]

print("emptyIntegers contains: ")
printArray(values: emptyIntegers) // pass empty Int Array
print("\nintegers contains: ")
printArray(values:integers) // pass Int Array
print("\ndoubles contains: ")
printArray(values: doubles) // pass Double Array
print()
