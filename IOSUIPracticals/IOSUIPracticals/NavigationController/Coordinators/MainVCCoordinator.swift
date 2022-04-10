//
//  MainVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import Foundation
import UIKit

class MainVCCoordinator: Coordinator {
    
    // MARK: Instance variable
    var navigationCOntroller: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        self.navigationCOntroller = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else { return }
        navigationCOntroller?.pushViewController(mainVC, animated: true)
    }
    
    func finish() {
        navigationCOntroller?.popViewController(animated: true)
    }
    
}
