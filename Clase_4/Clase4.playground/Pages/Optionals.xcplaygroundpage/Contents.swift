//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
var cellphone: String = "55252525252"
var landline : String? = nil

print(cellphone)
print(landline ?? "no tengo telefono")

//var strLandline = landline != nil ?
if let landline2 = landline {
    print(landline2)
}

guard let landline2 = landline else
{
    fatalError("ops")
}
print(landline2)

//: [Next](@next)
