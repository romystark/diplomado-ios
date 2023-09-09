//: [Previous](@previous)

import Foundation

import Foundation

print("JUEGO SERPIENTES Y ESCALERAS ||________°_° \n")
print("El dado inicia con valor 0 ")
var dice = 0
var escalera = [2, 5, 8]
var serpiente = [16, 18, 21, 23]
let tablero = [0...24]
var jugador = 0
var avanza = 0
var contador = 0
var retroceso = 0

while jugador < 24 {
  print("El jugador está en la posición \(jugador) \n")
  contador += 1
  print("Este es el turno  *\(contador)*")
  print("Tira un dado")
  dice = Int.random(in: 1...6)
  avanza = dice
  print("Cayó un \(avanza) el jugador avanza \(avanza) casillas")
  jugador += avanza
  print("El jugador ahora está en la posición \(jugador)")
  print("\n")
  if jugador == 2 || jugador == 5 || jugador == 8 || jugador == 9 {
    print ("Suerte! hay una escalera H")
      if jugador == 2 {  jugador += 8}
      if jugador == 5 {  jugador += 11}
      if jugador == 8 {  jugador += 9}
      if jugador == 9 {  jugador += 2}
    print("El jugador avanza a la posición \(jugador)")
  } else {
     if jugador == 13 || jugador == 18 || jugador == 21 || jugador == 23 {
    print ("Mala Suerte! hay una serpiente S")
         if jugador == 13 {  jugador -= 10}
         if jugador == 18 {  jugador -= 11}
         if jugador == 21 {  jugador -= 10}
         if jugador == 23 {  jugador -= 8}
    print("El jugador retrocede la posición \(jugador)")
      }
    }
  if jugador == 24 {
    print("Ganaste!!")
  } else {
    if jugador > 24 {
      print("Te pasaste de la meta :( ")
      retroceso = jugador - 24
      print("<------ \(retroceso)")
      jugador = 24 - retroceso
      print("Te regresas a la posición \(jugador) ")
      avanza = 0
    }
  }
  if jugador == 21 || jugador == 23 {
    print ("Mala Suerte! hay una serpiente S")
    jugador -= 5
    print("El jugador retrocede la posición \(jugador)")
      }
}

//: [Next](@next)
