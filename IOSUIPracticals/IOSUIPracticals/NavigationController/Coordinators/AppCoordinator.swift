//
//  AppCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    // MARK: Instance variable
    var navigationController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        guard let navigationVC = navigationController else { return }
        let mainVC = MainVCCoordinator(navigationVC)
        mainVC.start()
    }
    
    func finish() {
        navigationController?.popViewController(animated: true)
    }

}
