//: [Previous](@previous)

import Foundation

let volunteerCounts = [1,3,40,32,2,53,77,13]

func isAscending(_ i: Int, _ j: Int) -> Bool{
    return i < j
}

let volunteerSorted = volunteerCounts.sorted(by: isAscending)

print("1: De menor a m  ayor " , volunteerSorted)

// De otra forma
let volunteerSorted2 = volunteerCounts.sorted(by: {(i: Int,j: Int) ->
    Bool in
    return i < j
})
print(volunteerSorted)

// De otra forma
let volunteerSorted3 = volunteerCounts.sorted(by: {i,j in i < j })
print(volunteerSorted)

// De otra forma
let volunteerSorted4 = volunteerCounts.sorted {$0 < $1}
print(volunteerSorted)

func doAwesomeWork(on Input:String ,
                   using tranformer:() -> Void,
                   then completion: ( )-> Void){
    //Here would ogo the logic to do the awesome work
}
doAwesomeWork(on: "Diplomado") {
    // Here goes the transformer
} then: {
    //Here goes the completion
}
doAwesomeWork(on: "Diplomado", using: {}, then: {})
//: [Next](@next)


let volunteerAverages: [Double] = [10.75,4.2,1.5,12.12,16.815]

func format(numbers: [Double],
using formatter: (Double) -> String = {"\($0)"}) -> [String]{
    var result = [String]()
    
    for number in numbers {
        let transformedNumber = formatter (number)
        result.append(transformedNumber)
    }
    
    return result
}

func rounder(_ number: Double) -> String {
    let roundedNumber: Int = Int (number)
    return "\(roundedNumber)"
}

func addDescription(_ number: Double) -> String {
    return "volunters  average: \(number)"
}
//Haremos uso de format
let formatterAverageVolunteers = format(numbers: volunteerAverages, using: rounder)
print(volunteerAverages)
print(formatterAverageVolunteers)

let averageVoluntersDescription = format (numbers: volunteerAverages,using: addDescription)
print (averageVoluntersDescription)

let defaultVolunteerFormat = format(numbers: volunteerAverages)
print(defaultVolunteerFormat)

//-------------------------------------------------------------
// programación funcional

// map
//filter
// reduce


// map recorre cada elemento y

let roundedVolunters = volunteerAverages.map{ number in
    //let roundedNumber = Int(number)
    // return "\(roundedNumber)"
    return Int(number)
}
print (roundedVolunters)

// filter

let passingVolunters = roundedVolunters.filter{number in
    return number >= 10
}
print (passingVolunters)

//reduce .... regresa un unico valor

//partil result es el valor inicial
let totalVolunteers = passingVolunters.reduce(0){
    partialResult, number in
    return partialResult + number
}
print (totalVolunteers)

let finalvolunteerDescription = passingVolunters.reduce (
    "The volunteers were ") {partialResult, number in
        return partialResult + "\(number) "
    }
print (finalvolunteerDescription)
