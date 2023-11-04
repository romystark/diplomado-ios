import Foundation
// funcion que imprime un mensaje en pantalla
func myAwesomePrintingFuntcion(name: String){
    print("Hello \(name), welcome to the class " )
}
// llamada a funcion
//myAwesomePrintingFuntcion()
myAwesomePrintingFuntcion(name: "Roman")

func add (lhs: Int, rhs: Int){
    print("\(lhs) + \(rhs) = \(lhs)\(rhs)")
}
add(lhs: 3, rhs: 5)
// to y name parametro
func printWelcomeMessage(to name: String, course:String = "Diplomado iOS"){
    // nombre interno de la funcion
    print ("Hello, \(name), welcome to \(course)")
}
printWelcomeMessage(to: "Roman", course: "Diploamdo de Apps")
printWelcomeMessage(to: "Roman")

var error = "The process failed: "
func appendErrorCode(code: Int, toErrorString errorString: inout String){
    if code == 400 {
        errorString += "Bad request."
    }
}
print(error)
appendErrorCode(code: 400, toErrorString: &error)
print(error)

//De otra forma

var error2 = "The process failed: "
func appendErrorCode2(_ code: Int, toErrorString errorString: inout String){
    if code == 400 {
        errorString += "Bad request."
    }
}
print(error2)
appendErrorCode2(400, toErrorString: &error)
print(error2)

//----------------------------------------------

func welcomeMessage (to name: String) -> String{
    "Welcome \(name)"
}
let message = welcomeMessage(to: "Roman")
print(message)

//----------------------------------------------
func areaOfTriangleWith(base: Double, height: Double) -> Double{
        let rectangle = base * height
        
        func divide () -> Double {
            return rectangle/2
        }
        return divide()
    }

//----------------------------------------------

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds = [Int]()
    
    for number in numbers {
        // el simbolo se llama reminder
        if number % 2 == 0 {
            evens.append(number)
        }
        else{
            odds.append(number)
        }
    }
    return (evens: evens, odds: odds)
}
let aBunchOfNumbers = [10,1,4,3,57,43,27,84]
let sortedEvenAndOddNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are:\(sortedEvenAndOddNumbers.evens)")
print("The odd numbers are:\(sortedEvenAndOddNumbers.odds)")


