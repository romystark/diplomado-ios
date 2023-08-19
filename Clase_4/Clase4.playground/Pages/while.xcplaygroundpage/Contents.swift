//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
var counter = 1
while counter < 10 {
    print(counter)
    counter += 1
}

counter = 1
repeat {
    print(counter)
    counter += 1
} while counter < 10

//: [Next](@next)
print ("JUEGO SERPIENTES Y ESCALERAS")
var dice = Int.random(in: 1...6)
print ("El dado inicia con valor \(dice)")
var escalera = [2,5,8,]
var serpiente = [16,18,21,23]
var tablero = [0...24]
var jugador = 0
while jugador < 24{
    print("Tira un dado")
    var actualiza = dice 
    print("Cayó un \(dice)")
    jugador += dice
}


