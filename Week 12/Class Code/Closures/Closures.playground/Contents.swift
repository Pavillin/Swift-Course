
//.... Example01 ....Closures are annonymous functions

var volunteerCounts = [1,3,40,32,2,53,77,13]

func sortAscending(i: Int, j: Int) -> Bool {
    return i < j
}
let volunteersSorted = volunteerCounts.sorted(by: sortAscending)
print(volunteersSorted)
 //*/

//.... Example02 ....

 var volunteerCounts02 = [1,3,40,32,2,53,77,13]
 
 func sortDescending(i: Int, j: Int) -> Bool {
 return i > j
 }
 let volunteersSorted02 = volunteerCounts02.sorted(by: sortDescending)
 print(volunteersSorted02)


//.... Example03 .... Using Closure Expression

var volunteerCounts03 = [1,3,40,32,2,53,77,13]

let volunteersSorted03 = volunteerCounts.sorted(by: { ( i:Int, j:Int) -> Bool in
    return i < j })

print(volunteersSorted03)


//.... Example04 .... Using Closure Expression

let courses = ["Java", "Mobile", "CSharp", "PHP", "Python"]
let sortedCourses = courses.sorted(by: { (course1: String, course2: String) -> Bool in
    return course1 > course2
})
print(sortedCourses)


//.... Example05.... Inferring type from the context

let devices = ["Iphone", "Notebook", "Tablet", "Computer", "Reader"]
let sortedDevices = courses.sorted(by: { (device1, device2) -> Bool in
    return device1 > device2
})
print(sortedDevices)


// .... Example06: .... Implicit returns from single-expression closures

let courses02 = ["Java", "Mobile", "CSharp", "PHP", "Python"]
let sortedCourses02 = courses.sorted(by: { course01, course02 in
    course01 > course02 })
print(sortedCourses02)

// .... Example07: .... Shorthand argument names

let courses03 = ["Java", "Mobile", "CSharp", "PHP", "Python"]
let sortedCourses03 = courses.sorted( by: {
    $0 > $1
})
print(sortedCourses03)


// .... Example08: .... Trailing Closure

 let courses04 = ["Java", "Mobile", "CSharp", "PHP", "Python"]
 let sortedCourses04 = courses.sorted() {
 $0 > $1
 }
print(sortedCourses04)










