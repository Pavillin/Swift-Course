import Cocoa

// Example01: Overloaded function definitions

// square function with Int argument
func square( value: Int) -> Int
{
    print("Called square with Int argument: \(value)")
    return value * value
}

// square function with Double argument
func square(value: Double) -> Double
{
    print("Called square with Double argument: \(value)")
    return value * value
}

// test overloaded square functions
print("Square of Int 7 is \(square(value:7))\n")
print("Square of Double 7.5 is \(square(value:7.5))")


// Example02:
// sum function with Int arguments
func sum( value1:Int, value2:Int) -> Int
{
    print("Called sum with Int argument: \(value1) , \(value2)")
    return value1 + value2
}

// sum function with Double arguments
func sum( value1:Double, value2:Double) -> Double
{
    print("Called sum with Double argument: \(value1) , \(value2)")
    return value1 + value2
}

// test overloaded sum functions
print("Sum of Int 10 and 15  is \(sum(value1:10, value2:15))\n")
print("Sum of Double 10.45 and 15.78  is \(sum(value1:10.45, value2:15.78))\n")

// Example03: Largest of two values
// returns the maximum of its three Double parameters
func maximum(x: Double, y: Double ) -> Double {
    
    // determine whether y is greater than x
    if y > x {
        return y
    }
    else {
        
        return x
    }
}

// test function maximum
print("Maximum of 13.3, 2.2  is: \(maximum(x: 13.3, y: 12.2))")
print("Maximum of 10.1, 23.3 and 2.2 is: \(maximum(x: 10.1, y: 23.3))")


// Example04: Largest of three values
// returns the maximum of its three Double parameters
func maximum(x: Double, y: Double, z: Double) -> Double {
    var maximumValue = x // assume x is the largest to start
    
    // determine whether y is greater than maximumValue
    if y > maximumValue {
        maximumValue = y
    }
    
    // determine whether z is greater than maximumValue
    if z > maximumValue {
        maximumValue = z
    }
    
    return maximumValue
}

// test function maximum
print("Maximum of 3.3, 2.2 and 1.1 is: \(maximum(x: 3.3, y: 2.2, z: 1.1))")
print("Maximum of 1.1, 3.3 and 2.2 is: \(maximum(x: 1.1, y: 3.3, z: 2.2))")
print("Maximum of 2.2, 1.1 and 3.3 is: \(maximum(x: 2.2, y: 1.1, z: 3.3))")

