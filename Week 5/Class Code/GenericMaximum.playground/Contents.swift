import Cocoa
// Maximum.playground
// Generic function maximum with a type constraint on its type parameter

// determines the largest of three Comparable objects
func maximum<T : Comparable>(x: T, y: T, z: T) -> T {
    var max = x // assume x is initially the largest
    
    if y > max {
        max = y // y is the largest so far
    }
    
    if z > max {
        max = z // z is the largest
    }
    
    return max // returns the largest object
}

print("Maximum of 3, 4 and 5 is \(maximum(x: 3, y: 4, z: 5))")
print("Maximum of 6.6, 8.8 and 7.7 is \(maximum(x: 6.6, y: 8.8, z: 7.7))")
print("Maximum of pear, apple, orange is ")
print("\(maximum(x: "pear", y: "apple", z: "orange"))")
