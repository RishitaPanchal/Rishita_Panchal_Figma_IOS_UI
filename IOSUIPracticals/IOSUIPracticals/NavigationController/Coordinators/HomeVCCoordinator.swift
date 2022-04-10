//
//  HomeVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//


import Foundation
import UIKit

class HomeVCCoordinator: Coordinator {
    
    // MARK: Instance method
    var navigationController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        guard let firstVC = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController else { return }
        navigationController?.pushViewController(firstVC, animated: true)
    }
    
    func goToSecond() {
        guard let navController = navigationController else { return }
        let secondVC = VCOneCoordinator(navController)
        secondVC.start()
    }
    
    func finish() {
        navigationController?.popViewController(animated: true)
    }
  
}
