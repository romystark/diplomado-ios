//
//  PokemonListViewModel.swift
//  pokedex2
//
//  Created by Alejandro Mendoza on 17/11/23.
//

import Foundation

class PokemonListViewModel {
    private let fileName = "pokemon_list"
    private let fileExtension = "json"
    
    private var pokemonList: [Pokemon] = []
    
    let pokemonCellIdentifier = "pokemonCell"
    
    let viewTitle = "Pokedex"
    
    let numberOfSections: Int = 1
    var numberOfRows: Int { pokemonList.count }
    
    init() {
        loadData()
    }
    
    func pokemon(at indexPath: IndexPath) -> Pokemon {
        pokemonList[indexPath.row]
    }
    
    private func loadData() {
        guard let fileURL = Bundle.main.url(forResource: fileName,
                                            withExtension: fileExtension),
              let pokemonData = try? Data(contentsOf: fileURL),
              let pokemonList = try? JSONDecoder().decode([Pokemon].self,
                                                          from: pokemonData)
        else {
            assertionFailure("Cannot find or read file: \(fileName)")
            return
        }
        
        self.pokemonList = pokemonList
        
    }
}
