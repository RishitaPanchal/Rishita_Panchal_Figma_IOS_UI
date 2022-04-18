//
//  NavigateToVIPERVC.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import UIKit

class NavigateToVIPERVC: UIViewController, CoordinatorBoard {
    
    // MARK: Instance variable
    var coordinator: ArchitectureCoordinator?
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        if let naController = self.navigationController{
            coordinator = ArchitectureCoordinator(naController)
        }
    }
    
    @IBAction func goToNext(_ sender: Any) {
        coordinator?.goToComments()
    }
    
}
