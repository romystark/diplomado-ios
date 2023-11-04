import UIKit
/*
 Comentarios
 */

// variable
var greeting = "Hello, playground"
// constante
var constante = "Hola Mundo"

greeting = "Hola"

var n1 = 3, n2 = 3

/*
 Datos
 Enteros,
 Dobles,
 Strings,
 Booleanos
Xcode infiere el tipo de dato

 */

var doble = 3.0
var booleano =  true
var miEnteroUno: Int = 1
// empezar por minuscula
var miDoble: Double = 3.0
var miString: String = "Román"
var miSegundoEntero: Int


var num1 = 0.1
var num2 = 0.2

print (num1 + num2)

num1 - num2
num1 / num2
num1 * num2
num1 > num2
num1 < num2
num1 >= num2
num1 <= num2
num1 == num2
num1 != num2

num1 += num2
num1 -= num2

/*
 STRINGS
 */
var miString2: String = "Holi"
miString2 = "Bye"
var miString3: String = "Lau"

miString + miString3

var edad = 31

"Hola, me llamo \(miString) y tengo \(edad) años"

/*
 ARREGLOS
 */

var array = ["cine","comer", "pasear"]

var array2: [Int] = [1,2,3,4,5]

//array2[6]
array2.append(5)
array2 += [1,2,3,4,5]


//Colecciones no ordenadas que no permiten datos repetidos
var miset: Set<String> = ["cine","comer", "pasear"]

miset.insert("cine")
miset.insert("Paco")

/*
 Diccionarios
 */

var miDiccionario: [String : String] = [:]
var miDiccionariodos = ["Nombre":"Román","Edad":"31"]

// para agregar algo al diccionario
miDiccionariodos ["Color Favorito"] = "Verde"
// Comprobación
miDiccionariodos

/*
 TUPLAS
 */
var colorUno = "verde"
var codigo = "09132fj"

var color = ("verde", "09132fj")

color.0
color.1

var alumno = ("Roman Santiago",31)

alumno.0
alumno.1

var alumnoDos = (Nombre: "Roman Santiago",Edad: 31)

alumnoDos.Nombre
alumnoDos.Edad
