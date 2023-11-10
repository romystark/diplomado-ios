//
//  TabBarController.swift
//  TabBarController
//
//  Created by Diplomado on 03/11/23.
//

import UIKit

class TabBarController: UITabBarController {
    
    let firstView = FirstViewController()
    let secondView = SecondViewController()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([firstView,secondView], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .black

        // Do any additional setup after loading the view.
    }
    
    

}
