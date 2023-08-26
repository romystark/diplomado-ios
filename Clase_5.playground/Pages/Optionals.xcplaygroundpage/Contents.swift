//: [Previous](@previous)

import Foundation

func grabMiddleName (fullName: (first: String, middle: String?, last: String)) -> String?{
    return fullName.middle
}
let middleName = grabMiddleName (fullName: (first: "Roman  ", middle: nil , last: "Santiago" ))

if let middleName = middleName {
    print (middleName)
}

//--------------------------------------
func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print ("Hey there!")
        return
    }
    print("Hey, \(middleName)")
}
greetByMiddleName (fromFullName: (first: "Roman", middle: nil, last: "Santiago") )
//: [Next](@next)
