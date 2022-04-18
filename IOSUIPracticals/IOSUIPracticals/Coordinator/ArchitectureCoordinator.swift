//
//  LoginVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation
import UIKit

class ArchitectureCoordinator: Coordinator {
    
    // MARK: Instance variable
    var navigationController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        let vc = MVVMLoginVC.instantiateFromStoryBoard(from: .MVVMDemo)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func finish() {
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: Functions
    func goToComment() {
        let vc = MVVMShowCommentsVC.instantiateFromStoryBoard(from: .MVVMDemo)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
  
    func startViperNavigation() {
        let vc = NavigateToVIPERVC.instantiateFromStoryBoard(from: .VIPERDemo)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func goToComments() {
        let router = Router()
        if let navController = navigationController {
            router.start(navigationConroller: navController)
        }
    }
    
}
