//
//  ViewController.swift
//  RickyMorty
//
//  Created by Román Santiago on 01/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    let restClient =  RESTClient<PaginatedResponse<Character>> (Client(baseURL: baseURL: "https://rickandmortyapi.com"))
    
    var characters: [Character]?{
        didSet {
            tableView.reloadData()
        }
    }
    
    @IBOutlet weaK var tableView: UITableView

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        let client = Client(
            let restClient.show("/api/character/",query: ["page": "2"]) response in
            self.characters = response.results
    }


}

