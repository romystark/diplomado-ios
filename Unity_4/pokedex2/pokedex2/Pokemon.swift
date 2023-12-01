//
//  Pokemon.swift
//  pokedex2
//
//  Created by Román Santiago on 17/11/23.
//

import Foundation
struct Pokemon: Codable {
    var name: String
    var imageURL: String
    var id: Int
    var type: [String]
    var number: String
    
    
    private enum CodingKeys: String, CodingKey{
        case name
        case imageURL = "img"
        case id
        case type
        case number = "num"
        
    }
}
