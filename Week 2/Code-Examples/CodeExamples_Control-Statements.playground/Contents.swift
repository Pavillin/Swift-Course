import Cocoa

var str = "Hello, playground"

// Examples of if statement
let studentGrade = 90


// if statement
if studentGrade >= 60 {
    print("Passed")
}


// if...else statement
if studentGrade >= 60 {
    print("Passed")
} else {
    print("Failed")
}


// nested if...else statement
if studentGrade >= 90 {
    print("A")
} else {
    if studentGrade >= 80 {
        print("B")
    } else {
        if studentGrade >= 70 {
            print("C")
        } else {
            if studentGrade >= 60 {
                print("D")
            } else {
                print("F")
            }
        }
    }
}

// nested if...else statement
if studentGrade >= 90 {
    print("A")
} else if studentGrade >= 80 {
    print("B")
} else if studentGrade >= 70 {
    print("C")
} else if studentGrade >= 60 {
    print("D")
} else {
    print("F")
}


// ternary conditional operator
print(studentGrade >= 60 ? "Passed" : "Failed")




















