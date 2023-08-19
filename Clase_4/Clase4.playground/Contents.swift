import UIKit

var animal = "dog"
let number = 3

// Si animal es igual dog
if animal == "dog" {
    print("Its a dog")
}
// Si no
else {
    print("Not a dog")
}
// Si animal no es igual a cat
if animal != "cat" {
    print("Its a cat")
}
// Si no
else {
    print("Not a dog")
}
//Si animal es igual a dog ó animal es igual a cat
if animal == "dog" || animal == "cat" {
    print("Its a common pet")
}
// Si no
else {
    print("Not its a common pet")
}
//Si animal es igual a dog y animal es igual a cat
if animal == "dog" && animal == "cat" {
    print("Its a common pet")
}
// Si no
else {
    print("Not its a common pet")
}
// else if
if animal == "cat" {
    print("Its a common cat")
}
else if number == 2{
    print("Number 2")
}
// OPERADOR TERNARIO
// si  numero es igual a dos imprime es dos sino es algun otro numero
number == 2 ? print("es dos!") : print(" es algún otro numero")

//Ejercicio

var weather = "lluvia"
var time = 1

var dark = Array(0...6) + Array (19...23)
var light = 7...18

if weather == "lluvia"{
    print("🌧️")
} else{
    print("🌨️")
}
//Si la hora no es igual al valor de time
if light ~= time {
    print("usa bloqueador")
}
// Si no
else {
    print("no uses bloqueador")
}





