//
//  MainViewVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation
import UIKit

class MainVCCoordinator: Coordinator {
    
    // MARK: Instance variable
    var MainNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        MainNavController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        if let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController {
            MainNavController?.pushViewController(mainVC, animated: true)
        }
    }
    
    func finish() {
        MainNavController?.popViewController(animated: true)
    }
    
}
