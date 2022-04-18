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
    var LoginNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        LoginNavController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        let vc = MVVMLoginViewController.instantiateFromStoryBoard(from: .MVVMDemo)
        vc.coordinator = self
        LoginNavController?.pushViewController(vc, animated: true)
    }
    
    func goToComment() {
        let vc = MVVMshowCommentsViewController.instantiateFromStoryBoard(from: .MVVMDemo)
        vc.coordinator = self
        LoginNavController?.pushViewController(vc, animated: true)
    }
    
    func finish() {
        LoginNavController?.popViewController(animated: true)
    }

    func startViperNavigation() {
        let vc = NavigateToVIPERVC.instantiateFromStoryBoard(from: .VIPERDemo)
        vc.coordinator = self
        LoginNavController?.pushViewController(vc, animated: true)
    }
    
    func goToComments() {
        let router = Router()
        if let navController = LoginNavController {
            router.start(navigationConroller: navController)
            //secondVC.start()
        }
    }
    
}
