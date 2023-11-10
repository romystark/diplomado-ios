//
//  ViewController.swift    
//  CollectionTableView
//
//  Created by Diplomado on 03/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var dataArray = ["Primero","Segundo","Tercero"] // Conservation data
    var filterArray: [String] = [] // Filtered data
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sortButton: UIBarButtonItem!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterArray = dataArray
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func sortButtonPressed(_ sender: UIBarButtonItem) {
        if tableView.isEditing {
            tableView.isEditing = false
        } else {
            tableView.isEditing = true
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = filterArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        filterArray.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        filterArray = []
        if searchText == ""{
            filterArray = dataArray
        }
        for word in dataArray {
            if word.uppercased().contains(searchText.uppercased()){
                filterArray.append(word)
            }
        }
        tableView.reloadData()
    }
}


