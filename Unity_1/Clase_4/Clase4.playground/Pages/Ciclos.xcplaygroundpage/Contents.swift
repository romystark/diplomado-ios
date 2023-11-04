//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//CLICLO FOR
print ("ciclo for")
for i in 1...5{
    print(i)
}
print ("impresion de 4 números")
let numbers = [1,3,5,7]
for number in numbers{
    print(number)
}
//: [Next](@next)
print("imprimir intervalo")
let intervals = stride (from: 0, to: 20, by: 5)
for interval in intervals{
    print (interval)
}

print ("Pokemones!!")
let pokemon = [
    "🔥": "charmander",
    "💧": "mudkip",
    "🌱": "bulbasaur",
    "⚡️": "pikachu",]
print("primera forma")
for(type, name) in pokemon {
    print("i like \(name) of type \(type)")
}
print("\n")
print("segunda forma")
for poke in pokemon {
    print("i like \(poke.value) of type \(poke.key) ")
}

let names: Set = ["Roman","Laura", "Jorge", "Nara", "Alan"]

print ("\n For -in loop with counter as index")
var index = 0
for _ in names{
    print(index)
    index += 1
}
for (index2, name) in names.enumerated(){
    print(index2, name)
    index += 1
}
for(index, pokemon) in pokemon.enumerated()
{
    print("\(index), \(pokemon)")
}
for(index, (type,name)) in pokemon.enumerated()
{
    print("\(index), \(type) \(name)")
}
print("\n")
print("break")
for (index, name) in names.enumerated(){
    if index % 2 == 0 {
        print (name)
    } else
    {
        break
    }
}
print("\n")
print("continue")
for (index, name) in names.enumerated(){
    if index % 2 == 0 {
        continue
    }
    print(name)
}
print("\n")
print("where")
for (index, name) in names.enumerated()
    where index % 2 == 0 {
        print (name)
    }
print("\n")
print("ejemplo con pokemones")
var poke = String
for poke in pokemon where poke.key == "⚡️"{
    
    print (poke.value)
}

