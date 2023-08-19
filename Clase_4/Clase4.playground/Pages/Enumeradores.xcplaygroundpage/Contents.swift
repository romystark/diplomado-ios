//: [Previous](@previous)

import Foundation

enum Pet: String {
    case dog = "🐶"
    case cat = "🐱"
    case loro = "🦜"
    case dragon = "🐉"
}
let myPet = Pet(rawValue: "🦜")
let myDragon: Pet = .dragon
let myLoro = Pet.loro
//: [Next](@next)

switch myPet {
case .dog: print("🦜")
//default: print (myPet!.rawValue)
default: print (myPet?.rawValue)

}
