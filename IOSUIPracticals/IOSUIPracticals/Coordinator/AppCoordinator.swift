//
//  AppCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    // MARK: Instance variable
    var AppNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationControl: UINavigationController) {
        self.AppNavController = navigationControl
    }
    
    // MARK: Protocol methods
    func start() {
        if let navVC = AppNavController {
            let mainVC = MainVCCoordinator(navVC)
            mainVC.start()
        }
    }
    
    func finish() {
        AppNavController?.popViewController(animated: true)
    }

}
