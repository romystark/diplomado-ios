//
//  FisrtViewController.swift
//  Pokedex
//
//  Created by Román Santiago on 11/11/23.
//

import UIKit

var pokemones = ["1 Bulbasaur",
                 "2 Ivysaur",
                 "3 Venusaur",
                 "4 Charmander",
                 "5 Charmeleon",
                 "6 Charizard",
                 "7 Squirtle",
                 "8 Wartortle",
                 "9 Blastoise",
                 "10 Caterpie",
                 "11 Metapod",
                 "12 Butterfree",
                 "13 Weedle",
                 "14 Kakuna",
                 "15 Beedrill",
                 "16 Pidgey",
                 "17 Pidgeotto",
                 "18 Pidgeot",
                 "19 Rattata",
                 "20 Raticate",
                 "21 Spearow",
                 "22 Fearow",
                 "23 Ekans",
                 "24 Arbok",
                 "25 Pikachu",
                 "26 Raichu",
                 "27 Sandshrew",
                 "28 Sandslash",
                 "29 Nidoran",
                 "30 Nidorina",
                 "31 Nidoqueen",
                 "32 Nidoran",
                 "33 Nidorino",
                 "34 Nidoking",
                 "35 Clefairy",
                 "36 Clefable",
                 "37 Vulpix",
                 "38 Ninetales",
                 "39 Jigglypuff",
                 "40 Wigglytuff",
                 "41 Zubat",
                 "42 Golbat",
                 "43 Oddish",
                 "44 Gloom",
                 "45 Vileplume",
                 "46 Paras",
                 "47 Parasect",
                 "48 Venonat",
                 "49 Venomoth",
                 "50 Diglett",
                 "Dugtrio","Meowth","Persian","Psyduck","Golduck","Mankey","Primeape","Growlithe","Arcanine","Poliwag","Poliwhirl","Poliwrath","Abra","Kadabra","Alakazam","Machop","Machoke","Machamp","Bellsprout","Weepinbell","Victreebel","Tentacool","Tentacruel","Geodude","Graveler","Golem","Ponyta","Rapidash","Slowpoke","Slowbro","Magnemite","Magneton","Farfetch'd","Doduo","Dodrio","Seel","Dewgong","Grimer","Muk","Shellder","Cloyster","Gastly","Haunter","Gengar","Onix","Drowzee","Hypno","Krabby","Kingler","Voltorb","Electrode","Exeggcute","Exeggutor","Cubone","Marowak","Hitmonlee","Hitmonchan","Lickitung","Koffing","Weezing","Rhyhorn","Rhydon","Chansey","Tangela","Kangaskhan","Horsea","Seadra","Goldeen","Seaking","Staryu","Starmie","Mr. Mime","Scyther","Jynx","Electabuzz","Magmar","Pinsir","Tauros","Magikarp","Gyarados","Lapras","Ditto","Eevee","Vaporeon","Jolteon","Flareon","Porygon","Omanyte","Omastar","Kabuto","Kabutops","Aerodactyl","Snorlax","Articuno","Zapdos","Moltres","Dratini","Dragonair","Dragonite","Mewtwo","Mew",]


struct Pokemon {
    var pokenumber: Int
    var pokename: String
    var pokeimage: String
    var pokedescription: String
    var pokeAlbums:[pokealbum]
}

struct pokealbum {
    var namepokeAlbum: String
    var imagepokeAlbum: String
    var Doubledamagedealt: String
    var Doubledamagereceived: String
    var Halfdamagedealt: String
    var Halfdamagereceived: String
    var Notaffectedby:String
    var Noeffectagainst:String
}



class FisrtViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var pokeCollection : [Pokemon]
    
    init() {
        let Bulbasur = Pokemon(
                                pokenumber: 1,
                                pokename: "Bulbasaur",
                                pokeimage: "image1", 
                                pokedescription: "Something text here",
                                pokeAlbums: [pokealbum(namepokeAlbum: "Add name here",
                                                       imagepokeAlbum: "image1",
                                                       Doubledamagedealt: "very Strog",
                                                       Doubledamagereceived: "very Strog",
                                                       Halfdamagedealt: "very Strog",
                                                       Halfdamagereceived: "very Strog",
                                                       Notaffectedby: "very Strog",
                                                       Noeffectagainst: "very Strog")
                                            ]
        )
        
        let Ivysaur = Pokemon(
                                pokenumber: 2,
                                pokename: "Ivysaur",
                                pokeimage: "image2",
                                pokedescription: "Something text here",
                                pokeAlbums: [pokealbum(namepokeAlbum: "Add name here", imagepokeAlbum: "image1", Doubledamagedealt: "very Strog", Doubledamagereceived: "very Strog", Halfdamagedealt: "very Strog", Halfdamagereceived: "very Strog", Notaffectedby: "very Strog", Noeffectagainst: "very Strog")]
                                )
        
        
        pokeCollection = [Bulbasur,Ivysaur]
    }
    
    @IBOutlet weak var pokemonlist: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonlist.delegate = self
        pokemonlist.dataSource = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pokemonlist.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = pokemones [indexPath.row]
        return cell
    }
    override func viewDidAppear(_ animated: Bool) {
        pokemonlist.reloadData()
    }

}
