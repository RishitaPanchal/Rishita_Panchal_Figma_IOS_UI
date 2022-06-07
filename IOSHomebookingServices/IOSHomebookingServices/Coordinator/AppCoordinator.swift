//
//  AppCoordinator.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 06/05/22.
//

import Foundation
import UIKit

// MARK: Coordinator protocol
protocol Coordinator {
    
    var navigationController: UINavigationController? { get set }
    func start()
    func finish()
    
}

class AppCoordinator: Coordinator {
    
    // MARK: - Instance variable
    var navigationController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationControl: UINavigationController) {
        self.navigationController = navigationControl
    }
    
    // MARK: Protocol methods
    func start() {
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if launchedBefore  {
            let vc = AuthenticationCoordinator.init(navigationController ?? UINavigationController())
            vc.start()
        }
        else {
            UserDefaults.standard.set(true, forKey: "launchedBefore")
            let vc = OnBoardingViewController.instantiateFromStoryBoard(from: .OnBoardingScreen)
            vc.onBoardingViewController = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func finish() {
        navigationController?.popViewController(animated: true)
    }
    
    func goToLoginVC() {
        let vc = AuthenticationCoordinator(navigationController ?? UINavigationController())
        vc.start()
    }
    
    func goToWelcomeScreen() {
        let vc = AuthenticationCoordinator(navigationController ?? UINavigationController())
        vc.goToWelcomeScreen()
    }

}
