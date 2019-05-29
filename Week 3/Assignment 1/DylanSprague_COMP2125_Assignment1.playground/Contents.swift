import Cocoa

/** EXERCISE 1
 * Write an overloaded function called SwapContents
 * It should be able to swap the contents of any two variables.
 * Demonstrate it by passing integers, doubles and string types of variables.
 */

func SwapContents(val1: Int, val2: Int){
    print(val2, val1)
}
func SwapContents(val1: Int, val2: Double){
    print(val2, val1)
}
func SwapContents(val1: Int, val2: String){
    print(val2, val1)
}
func SwapContents(val1: Double, val2: String){
    print(val2, val1)
}
func SwapContents(val1: Double, val2: Double){
    print(val2, val1)
}
func SwapContents(val1: Double, val2: Int){
    print(val2, val1)
}
func SwapContents(val1: String, val2: Int){
    print(val2, val1)
}
func SwapContents(val1: String, val2: String){
    print(val2, val1)
}
func SwapContents(val1: String, val2: Double){
    print(val2, val1)
}

//Call function
print("Exercise 1\n")

print("Pass in 15 and 5")
SwapContents(val1: 15, val2: 5)

print("Pass in 20 and 3.9")
SwapContents(val1: 20, val2: 3.9)

print("Pass in 15 and Hello")
SwapContents(val1: 15, val2: "Hello")

print("Pass in 34.5 and Jones")
SwapContents(val1: 34.5, val2: "Jones")

print("Pass in 23.7 and 22.2")
SwapContents(val1: 23.7, val2: 22.2)

print("Pass in 12.4 and 5")
SwapContents(val1: 12.4, val2: 5)

print("Pass in 15 and 5")
SwapContents(val1: "A String", val2: 203)

print("Pass in Baker and Fisher")
SwapContents(val1: "Baker", val2: "Fisher")

print("Pass in Kobo and 23.5")
SwapContents(val1: "Kobo", val2: 23.5)
print("")

/** EXERCISE 2
 * Define a function – SumAvgArray(values: [Int] ) -> ( Int, Double)
 * Which calculates the sum and average of an integer array and
 * return – sum and average ( two values ) as tuple
 */

func SumAvgArray(values: [Int]) -> (Int, Double){
    var sum:Int = 0
    for i in values{
        sum += i
    }
    let avg:Double = Double(sum) / Double(values.count)
    let sumAndAvg = (sum, avg)
    return sumAndAvg
}

//Call Function
print("Exercise 2\n")
let intArray = [23,45,66,12,88]
print("Output (SUM, AVG)")
print(SumAvgArray(values: intArray));
print("")

/** EXERCISE 3
 * You are given an array of dictionaries. Each dictionary in the array contains 2 keys “firstName” and “lastName”.
 * Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from
 * the dictionary separated by a space.
 */

var nameDictionaries = ["Joe": "Mango",
                        "Dylan": "Sprague",
                        "Sem": "Pillar",
                        "Whoopie": "Home",
                        "Halie": "Jones",
                        "Alec": "Manson"]

var fullNames:[String] = []

for (firstName, lastName) in nameDictionaries {
    let fullName:String = firstName + " " + lastName
    fullNames.append(fullName)
}

//Print fullNames array
print("Exercise 3\n")
for fn in fullNames
{
    print(fn)
}
print("")

/** EXERCISE 4
 * You are given two sets – Set of Cities in Ontario and Quebec.
 * Choose some cities of your choices and take some cities which are common in both the provinces such as Paris etc.
 * And do the following: Show the output of Set Union and Intersection operations.
 */

let ontCities = Set<String>(["Toronto", "London", "Barrie", "Common city1" , "Common city2"])
let qcCities = Set<String>(["Drummondville", "Montreal", "Quebec City", "Common city1" , "Common city2"])
print("Exercise 4\n")

//Union
let combinedCities = ontCities.union(qcCities)
print("Union")
for city in combinedCities{
    print(city)
}
print("")
//Intersection
let commonCity = ontCities.intersection(qcCities)
print("Intersection")
for city in commonCity{
    print(city)
}
print("")

