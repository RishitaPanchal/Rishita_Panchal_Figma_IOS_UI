//
//  AppCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation
import UIKit

// MARK: Coordinator protocol
protocol Coordinator {
    
    func start()
    func finish()
    
}

class AppCoordinator: Coordinator {
    
    // MARK: Instance variable
    var AppNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationControl: UINavigationController) {
        self.AppNavController = navigationControl
    }
    
    // MARK: Protocol methods
    func start() {
        let vc = MainViewController.instantiateFromStoryBoard(from: .main)
        vc.mainCoordinator = self
        AppNavController?.pushViewController(vc, animated: true)
    }
    
    func finish() {
        AppNavController?.popViewController(animated: true)
    }

}
