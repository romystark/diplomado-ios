//
//  SecondViewController.swift
//  Pokedex
//
//  Created by Román Santiago on 11/11/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var pokemon: UITextField!
    
    @IBAction func searchPokemon(_ sender: Any) {
        pokemones.append(pokemon.text!)
        pokemon.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }

}
