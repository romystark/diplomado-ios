//: [Previous](@previous)

import Foundation
// grupo de valores relacionados

enum Pet: String, CaseIterable{
    case dog = "🐶"
    case cat = "🐱"
    case loro = "🦜"
    case dragon = "🐉"
}
let myPet = Pet(rawValue: "🦜")
let myDragon: Pet = .dragon
let myLoro = Pet.loro


switch myPet {
case .dog: print("🦜")
default: print (myPet?.rawValue ??
 myPet?.rawValue)
}

let allCases = Pet.allCases{
    for pet in allCases{print(pet.rawValue)
    }
    
    enum ContactMethod{
        case email (String)
        case phone (Int)
        case mail (
            streetName: String,
            zipCode: String,
            streetNumber: Int)
    }
    var myPreferedContactMethod =
    ContactMethod.email("myemailgoehere")
    switch myPreferedContactMethod {
    case .email(let strEmail): print(strEmail)
    case .phone(let num): print(num)
    case .mail(streetName: let name,
               zipCode: let zc,
               streetNumber: let num):
        print("AdreesStreet \(name) \(num) \(zc)")
        
    }
    
    enum ArithmeticExpression {
        case number (Int)
        indirect case addition (ArithmeticExpression, ArithmeticExpression)
        indirect case multiplication (ArithmeticExpression, ArithmeticExpression)
    }
    
    let five = ArithmeticExpression.number(5)
    let four = ArithmeticExpression.number(4)
    let sum = ArithmeticExpression.addition(five, four)
    let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
    
    func evaluate(expression: ArithmeticExpression) -> Int{
        switch expression {
        case.number(let number): return number
        case.addition(let leftExp, let rightExp): return
            evaluate(expression: leftExp) +
            evaluate(expression: rightExp)
        case.multiplication(let leftExpr, let rightExp): return
            evaluate(expression: leftExpr)*
            evaluate(expression: rightExp)
        }
    }
}
