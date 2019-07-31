import Cocoa

// Unwrapping ...

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// Force unwrapping ..

let numString = "5"
//let num = Int(numString)  // it will make num an optinal int - Int? and if value is not proper, then it will fail/crash

let num = Int(numString)! // It will unwrap it and make it a regular Int


// Like regular optionals, implicitly unwrapped optionals might contain a value or
// they might be nil. However, unlike regular optionals you donít need to unwrap
// them in order to use them: you can use them as if they werenít optional at all.

// Implicitly unwrapped optionals are created by adding an exclamation mark after your type name, // like this:

let age: Int! = nil

// Implicitly unwrapped optionals exist because sometimes a variable will start life as nil,
// but will always have a value before you need to use it.
// Because you know they will have a value by the time you need them, itís helpful not having to write if let all the time.

// Unwrapping of optionals - if let  .....this is called optional binding

func greetings(_ name: String?) {
    if let unwrapped = name
    {
        print("You provided a name!")
        print("Hello, \(unwrapped)!")
        return
    }
        
    else {
        print("You didn't provide a name!")
        return
    }
}
// function call
greetings("Georgian")

// Unwrapping of optionals - guard let  ..... for early exit

func greetings2(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}
// function call
greetings2(nil)
greetings2("greeting 2 name")

// Nil Coalescing ..

// The nil coalescing operator unwraps an optional and returns the value inside if there is one.
// If there isnít a value ñ if the optional was nil ñ then a default value is used instead.
// Either way, the result wonít be optional: it will either by the value from inside the optional or //the default value used as a back up.


func username(for id: Int) -> String? {
    if id == 10 {
        return "Sujeet Lohan"
    } else {
        return nil
    }
}

let user = username(for: 10) ?? "Georgian" //?? sets default if you get nil value
print(user)

// Optional Chaining ..
/* Swift provides us with a shortcut when using optionals: if you want to access something like a.b.c and b is optional, you can write a question mark after it to enable optional chaining: a.b?.c.
 
 When that code is run, Swift will check whether b has a value, and if itís nil the rest of the line will be ignored ñ Swift will return nil immediately. But if it has a value, it will be unwrapped and execution will continue. */

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()
print(beatle)
    
    //That question mark is optional chaining ñ if first returns nil then Swift wonít try to uppercase //it, and will set beatle to nil immediately.
    
 //Visit the following URL to explore more:

//https://www.hackingwithswift.com/sixty/10/1/handling-missing-data
