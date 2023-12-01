//
//  ViewController.swift
//  Tablas
//
//  Created by Diplomado on 27/10/23.
//

import UIKit

class ViewController: UIViewController {

    //OUTLETS
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var TableView: UITableView!{
        didSet {
            TableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
        }
    }
    
   
    let model = TableViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //LIGANDO EL DATA SOURCE DESDE EL VIEW CONTROLLER
        TableView.dataSource = self
        TableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    //ACTIONS
    @IBAction func addButton (_ sender: Any){
        model.addRow(text: textName.text ?? "")
        TableView.reloadData()
    }


}

extension ViewController: UITableViewDataSource{
    
    //Obtenemos el numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        model.getSectionss()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        model.getSectionTitle()
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //model.getCountArray()
        switch section {
        case 0: model.getCountArray()
        case 1: 1
        case 2: 2
        case 3: 3
        default: model.getCountArray()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // index path fila y sección
        
        // CELDAS REUTILIZABLES
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? MyTableViewCell
        //ESTILOS
        // if cell == nil{
        //   cell = UITableViewCell(style: //.subtitle, reuseIdentifier: "cell")
        // cell?.backgroundColor = .gray
        // cell?.accessoryType = .disclosureIndicator
        
        
        //NO USAR ASÍ LAS CELDAS
        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        //cell?.textLabel?.text = model.getTitle(index: indexPath)
        //cell?.detailTextLabel?.text = model.getDescription(index: indexPath)
        
        switch indexPath.section {
        case 1: cell?.backgroundColor = .lightGray
        case 2: cell?.backgroundColor = .green
        case 3: cell?.backgroundColor = .darkGray
        default: cell?.backgroundColor = .lightGray
        }
        
        cell?.myTitle.text = model.getTitle(index: indexPath)
        cell?.myDescription.text = model.getDescription(index: indexPath)
        return cell!
    }
    
    //Funciones para que aparezca el delete
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        "Delete"
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            model.deleteRow(index: indexPath)
            tableView.reloadData()
        }
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0: 75
        case 1: 80
        case 2: 85
        case 3: 90
        default: 60
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(model.getTitle(index: indexPath))
        performSegue(withIdentifier: "TableToNextView", sender: nil)
        // para quitar el hoover persistente de la celda
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
