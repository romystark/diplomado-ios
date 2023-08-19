//: [Previous](@previous)

import Foundation

var greeting = "Hello, this is the class 4"
let animal = "lion"

switch animal {
case "panda" : print("🐼")
case "pork" : print ("🐽")
case "lion" : print ("🦁")
default: break
}

// CASO COMPUESTO
switch animal {
case "panda", "lion":
    print("a mi me gustan estos animales")
default: print("Bah")
}
let grade = 9
switch grade {
case ...5: print("failed")
case 6..<9: print("Bah")
case 9: print("Bien")
case 10: print("Muy bien")
default: print("lastima")
}


let color = (255,255,255)
switch color {
case (_,_,255): print ("Max blue")
    fallthrough
 case (_,1,_): print ("Mex green")
case (1,_,_): print ("Mex red")
default: break
}

let color1 = (1,2,255)
switch color1 {
case (let r,let g,255): print ("red: \(r),green: \(g) ,Max blue")
case (let r,255,let b): print ("red: \(r), Max green ,blue: \(b)")
case (255,let g,let b): print ("Max red ,green: \(g) ,blue: \(b)")
default: break
}

//Ejercicio

let coordenada = (5,5)
switch coordenada {
case (0,0): print ("esta en el origen")
case  (-5..<0,-5..<0): print ("esta en el cuadrante 3")
case  (-5..<0,0) || (0>..5,0) : print ("esta en el eje x")
case  (0,-5..<0) || (>0..<5,0): print ("esta en el eje y")
case  (>0..5,-5..<0): print ("esta en el cuadrante 4")
case  (>0..5,>0..5): print ("esta en el cuadrante 1")
case  (-5..<0,>0..5): print ("esta en el cuadrante 2")
default: print("esta fuera del cuadrante")
}

//: [Next](@next)
