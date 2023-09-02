import Foundation

// Extensions

extension Double {
    var squared: Double {return self * self
    }
}

let sideLength: Double = 12.5
let area = sideLength.squared

struct Car{
    let maker: String
    let model: String
    let year: Int
    
    var fuelLevel: Double{
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0,
            "New value must be between 0 and 1")
        }
    }
}

extension Car: CustomStringConvertible {
    var description = String {
        "\(maker)-\(model)"
    }
    
 
}

let firstCar = Car (maker: "Honda",
                    let model: "Civic",
                    let year: 2023,
                    
                     )
