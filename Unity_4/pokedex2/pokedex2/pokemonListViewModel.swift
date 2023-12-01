//
//  pokemonListViewModel.swift
//  pokedex2
//
//  Created by Román Santiago on 17/11/23.
//

import Foundation
class PokemonListViewModel{
    private let fileNAme = "pokemon_list"
    private let fileExtension = "json"
    
    init() {
        loadData()
    }
    private func loadData(){
        guard let fileURL = Bundle.main.url(forResource: fileNAme, withExtension: fileExtension),
            let pokemonData = try? Data(contentsOf: fileURL)
        else {
            assertionFailure("Cannot find the file: \(fileNAme)")
            return
        }
        let decoder = JSONDecoder()
        do {
            let pokemonList = try decoder.decode([Pokemon].self, from: pokemonData)
            let _ = pokemonList.count
        } catch{
            assertionFailure("\(error.localizedDescription)")
        }
    }
}
