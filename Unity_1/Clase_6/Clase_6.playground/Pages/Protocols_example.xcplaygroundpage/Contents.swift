//: [Previous](@previous)

import Foundation

// Student Protocol Example
protocol Student {
var accountNumber: Int { get }
var name: String { get }
}

struct EngineeringStudent: Student {
var accountNumber: Int
var name: String

let hasCalculator: Bool

}

struct MedicineStudent: Student {
var accountNumber: Int
var name: String

let hasLabCoat: Bool

}

let engineeringStudent = EngineeringStudent(accountNumber: 313204186, name: "Alejandro", hasCalculator: false)
let medicineEstudent = MedicineStudent(accountNumber: 111123123123, name: "Mariana", hasLabCoat: true)

func printStudentsInformation(_ student: Student) {
print("(student.name) - (student.accountNumber)")

if let medicineStudent = student as? MedicineStudent {
    print(medicineStudent.hasLabCoat)
}

}

printStudentsInformation(engineeringStudent)
printStudentsInformation(medicineEstudent)
//: [Next](@next)
