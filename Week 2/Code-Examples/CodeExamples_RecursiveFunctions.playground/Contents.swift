import Cocoa

// recursive factorial function
func factorial(number: Int64) -> Int64 {
    // base case
    if number <= 1 {
        return 1
    } else { // recursion step
        return number * factorial(number: number - 1)
    }
}

// calculate the factorials of 0 through 10
for counter in 0...10 {
    print("\(counter)! = \(factorial(number: Int64(counter)))")
}


