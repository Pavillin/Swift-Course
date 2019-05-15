//: Playground - noun: a place where people can play

var str = "Hello, playground"
var intArray:[Int] = [101, 102, 103]

// .... Example 01 ...Array initialization
var bucketList: [String] = ["Swift Programming"]
var courseName = ["Swift Programming"]  // type inference

// .... Example 02 .... Adding to the an array
var newbucketList = ["Climb Mt. Everest"]
newbucketList.append("Fly hot air balloon to Fiji")
newbucketList.append("Go on a walkabout")
newbucketList.append("Scuba dive in the Great Blue Hole") // Total 4 element

// ... Example 03 .. count , capacity, printing individual elements and range
var grades = [56, 75, 81, 44, 60]
// count property
print(grades.count)
// capacity
print(grades.capacity)
// printing contents
print(grades.description)
print(grades.max()!) // Maximum
print(grades.min()!) // Minimum
print(grades.last!) // last element


// printing
for g in grades
{
print(g)
}

// ... Printing first three elements ....
print(grades[0...2])

// ... Printing individual elements ...
print(grades[2], grades[3])
print(grades[2], grades[3], separator: ",") // using a seperator


// ... Example 04 .. Summing individual elements
var sum = grades[2] + grades[4]
print(sum)

// ...  Example 05 .. Adding all the elements of an array  ....
var total=0
for g in grades
{
    total = total + g
}
print(total)

// ... Example 06: Updating a value
bucketList[0] = "Climb Mt. Kilimanjaro"

// ... Example 06: .... Removing an item from an array ...

print(grades.description)
grades.remove(at: 2)
print(grades.description)



//.... Example 07: Using a loop to append items from one array to another

var mybucketList = ["Climb Mt. Everest"]
var newItems = [
    "Fly hot air balloon to Fiji",
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

for item in newItems {
    mybucketList.append(item)
}
mybucketList.remove(at:2)
print(bucketList.count)
print(mybucketList[0...2])
mybucketList[2] += " in Australia"
mybucketList[0] = "Climb Mt. Kilimanjaro"
print(mybucketList)

//.... Example 08: Initialization

var intNumbers = [Int](repeating: 10, count: 3)
var someVar = intNumbers[0]
print( "Value of first element is \(someVar)" )
print( "Value of second element is \(intNumbers[1])" )
print( "Value of third element is \(intNumbers[2])" )

//.... Example 09: Adding elements by appneding
var intVals = [Int]()
intVals.append(20)
intVals.append(30)
intVals += [40]
var num = intVals[0]
print( "Value of first element is \(num)" )
print( "Value of second element is \(intVals[1])" )
print( "Value of third element is \(intVals[2])" )

// .... Example 10 : Copying an array
var items = [11, 22, 33, 44, 55]
var itemsCopy = items
items[0] = 100
print(items)
// Prints [100, 22, 33, 44, 55]
print(itemsCopy)
// Prints [11, 22, 33, 44, 55]

