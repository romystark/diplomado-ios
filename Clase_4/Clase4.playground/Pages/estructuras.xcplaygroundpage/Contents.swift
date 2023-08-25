//: [Previous](@previous)

import Foundation

struct Car {
    var wheels: Int
    var color: String
}

let myCar = Car (
    wheels: 4,
    color: "Black"
)

struct Dog {
    var name: String
    var isAdopted: Bool
}
let chock = Dog (name: "chock", isAdopted: true)



class Cars {
    var wheels: Int
    var color: String
    init (wheels: Int, color: String){
        self.wheels = wheels
        self.color = color
    }
}
let myCars = Cars(wheels: 4, color: "Black")
myCars.color = "Blue"
let copyOfmyCars = myCars
copyOfmyCars.color = "Red"
//: [Next](@next)
