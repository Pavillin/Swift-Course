//
//  main.swift
//  Struct_Compostion_Examples
//

import Foundation

// Card shuffling and dealing.

var myDeckOfCards = DeckOfCards()

myDeckOfCards.shuffle() // place Cards in random order
print("SHUFFLED DECK OF CARDS")
var i = 0 // used to determine when to start new output line

while let card = myDeckOfCards.dealCard() { // deal and unwrap Card
    i = i + 1
    print(card.description) // display Card
    if (i % 4 == 0) { // move to next line after every fourth card
        print()
    }
} // end while

print("\nDESCRIPTIONS AND RAW VALUES OF THE FACE ENUM CONSTANTS")
for face in Card.Face.values {
    print("\(face.description) = \(face.rawValue)")
}

print("\nRAW VALUES OF THE SUIT ENUM CONSTANTS")
for suit in Card.Suit.values {
    print("\(suit.rawValue)")
}

print("\nCREATING FACES FROM RAW VALUES")
for i in 1...14 {
    if let face = Card.Face(rawValue: i) {
        print("\(i) is \(face.description)'s raw value")
    } else {
        print("There is no Face constant for the raw value \(i)")
    }
}



