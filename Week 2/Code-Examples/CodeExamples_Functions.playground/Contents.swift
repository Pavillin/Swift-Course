import Cocoa


// Functions Overloading Examples

func greetings() // function definition
{
    print("Demo about functions")
}

greetings()

// Example.01
print("\nOutput: Example01")
func display(name: String) -> String {
    return name
}

print(display(name: "First Demo"))
print(display(name: "About Functions"))

// Example02:
print("\nOutput: Example02")
func displayNum(num1: Int) -> Int {
    let a = num1
    return a
}

print(displayNum(num1: 100))
print("\(displayNum(num1: 200))")
print("Output: \(displayNum(num1: 200))")

// Example03: Functions with no return type
print("\nOutput: Example03")
func sum(a: Int, b: Int) {
    let a = a + b
    let b = a - b
    print(a, b)
}

sum(a: 20, b: 10)



// Examples 04: Function maximum with three Double parameters.

// returns the maximum of its three Double parameters
print("\nOutput: Example04")
func maximum(x:Double, y:Double, z:Double) -> Double {
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


// Example: Shifted and scaled random integers
import Darwin // allow program to use C function arc4random_uniform

for _ in 1...20 {
    print("\(1 + arc4random_uniform(6)) ")
}

// Pass-by-reference with inout parameters

// square function that modifies its argument in the caller

func square( value: inout Int) {
    value *= value // squares value of caller's variable
}

// test inout parameter
var x = 5
print("Original value of x is \(x)")
square(value: &x)
print("Value of x after calling square(&x) is \(x)")

// Example: External parameter names

// use iteration to calculate power of base raised to the exponent
func power( base b: Int, exponent e: Int) -> Int {
    var result = 1;
    
    for _ in 1...e {
        result *= b
    }
    
    return result
}

// call power with and without default parameter values
print("power(base: 10, exponent: 2) = \(power(base: 10, exponent: 2))")
print("power(base: 2, exponent: 10) = \(power(base: 2, exponent: 10))")

// Example: Default parameter values

// use iteration to calculate power of base raised to the exponent
func powerFunc(base: Int, exponent: Int = 2) -> Int {
    var result = 1;
    
    for i in 1...exponent {
        result *= base
    }
    
    return result
}

// call power with and without default parameter values
print("powerFunc(10) = \(powerFunc(base: 10))")
print("powerFunc(2, exponent: 10) = \(powerFunc(base: 2, exponent: 10))")



