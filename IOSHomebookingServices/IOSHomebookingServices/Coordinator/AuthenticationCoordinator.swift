//
//  AuthenticationCoordinator.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 06/05/22.
//

import Foundation
import UIKit

class AuthenticationCoordinator: Coordinator {
    
    // MARK: - Instance variable
    var navigationController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationControl: UINavigationController) {
        self.navigationController = navigationControl
    }
    
    // MARK: - functions
    func start() {
        let vc = LoginViewController.instantiateFromStoryBoard(from: .main)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func finish() {
        navigationController?.popViewController(animated: true)
    }
    
    func goToWelcomeScreen() {
        let vc = WelcomeScreenViewController.instantiateFromStoryBoard(from: .OnBoardingScreen)
        vc.welcomeScreenCoordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func goTosignUpVC() {
        let vc = SIgnUpViewController.instantiateFromStoryBoard(from: .main)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func redirectToLoginVC() {
        let vc = LoginViewController.instantiateFromStoryBoard(from: .main)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func redirectToCoreDBVC() {
        let vc = CRUDViewController.instantiateFromStoryBoard(from: .CoreDataBase)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func redirectToRouterVC() {
        let vc = NotificationViewController.instantiateFromStoryBoard(from: .CoreDataBase)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func redirectToPersonDetailes() {
        let vc = PersonDetailsViewController.instantiateFromStoryBoard(from: .CoreDataRelationShip)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func redirectToFetchedPropertiesDemo() {
        let vc = FetchedPropertiesViewController.instantiateFromStoryBoard(from: .CoreDataFetchedProperties)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
