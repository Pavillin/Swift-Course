// Enumerated Data types
// Used in situations where set if values are finite
// Simulating the dice game of craps
/*
You roll the dice, each die has six faces. Sum of the two dice is calculated.
if the sum is 7 or 11 on first throw, you win
if sum is 2, 3 or 12 on the first throw, you loose ( "the house" wins)
if the sum is 4,5,6,8,9 or 10 on the first throw, sum becomes your point.
To win, you must continue rolling the dice until you "make your point" (i.e. roll that same point value).
 You lose by rolling a 7 before making your point
 */
import Cocoa
import Darwin

// enum representing game status constants (no raw type)
enum Status {
    case Continue, Won, Lost // enumeration constants
}

// enum with Int constants representing common dice totals
// here enum contants have raw values
enum DiceNames: Int {
    case SnakeEyes = 2
    case Trey = 3
    case Seven = 7
    case YoLeven = 11
    case BoxCars = 12
}

// function that rolls two dice and returns them and their sum as a tuple
func rollDice() -> (die1: Int, die2: Int, sum: Int) {
    let die1 = Int(1 + arc4random_uniform(6)) // first die roll
    let die2 = Int(1 + arc4random_uniform(6)) // second die roll
    return (die1, die2, die1 + die2)
}

// function to display a roll of the dice
// here input parameter is a tuple
func displayRoll(_ roll: (Int, Int, Int)) {
    print("Player rolled \(roll.0) + \(roll.1) = \(roll.2)")
}

// play one game of craps
var myPoint = 0 // point if no win or loss on first roll
//var gameStatus = Status.Continue // can contain Continue, Won or Lost
// or..
var gameStatus:Status = Status.Continue

var roll = rollDice() // first roll of the dice
displayRoll(roll) // display the two dice and the sum

// determine game status and point based on first roll
switch roll.sum {
// win on first roll
case DiceNames.Seven.rawValue, DiceNames.YoLeven.rawValue:
    gameStatus = Status.Won
// lose on first roll
case DiceNames.SnakeEyes.rawValue, DiceNames.Trey.rawValue,
     DiceNames.BoxCars.rawValue:
    gameStatus = Status.Lost
// did not win or lose, so remember point
default:
    gameStatus = Status.Continue // game is not over
    myPoint = roll.sum // remember the point
    print("Point is \(myPoint)")
}

// while game is not complete
while gameStatus == Status.Continue
{
    roll = rollDice() // first roll of the dice
    displayRoll(roll) // display the two dice and the sum
    
    // determine game status
    if roll.sum == myPoint { // won by making point
        gameStatus = Status.Won
    } else {
        if (roll.sum == DiceNames.Seven.rawValue) { // lost by rolling 7
            gameStatus = Status.Lost
        }
    }
}

// display won or lost message
if gameStatus == Status.Won {
    print("Player wins")
} else {
    print("Player loses")
}


