import Cocoa

// Examples 1.1: for loops
// Example 1.1
for count in 1...5 {
    print("\(count) ")
}

print()

// Example 1.2

for _ in 1...5 {
    
    print("* ")
    
}

print()

// Example 1.3
for count in 1..<5 {
    print("\(count) ")
}

print()

// Example 1.4
for count in stride(from: 11, through: 1, by: -2) {
    print("\(count) ")
}

print()

// Example 1.5

for count in stride(from: 10, to: 50, by: 10) {
    print("\(count) ")
}

print()

// Example: break statement exiting a for..in statement
for count in 1...10 { // supposed to loop 10 times
    
    print("\(count)  ")
    break
} //end for

print()

for count in 11...20 { // supposed to loop 10 times
    
    print("\(count)  ")
    
} //end for

print()


// printing odd numbers between 1 and 10
for count in 1...10
{
    if (count % 2) == 0
    {
        print("\(count) ")
    }
} // end for


// finding sum of even numbers between 10 and 20
var sum:Int = 0
for count in 10...20
{
    if (count % 2) == 1
    {
        sum += count
    }
} // end for

print("\(sum) ")

// use of break statement
for count in 1...10 { // supposed to loop 10 times
    if (count == 5) {
        break // terminates loop if count is 5
    }
    
    print("\(count)  ")
}



// Example: continue statement exiting a for...in statement
for count in 1...10 { // supposed to loop 10 times
    if (count == 5) {
        continue // move to next iteration of the loop
    }
    
    print("\(count)  ")
}

print()
