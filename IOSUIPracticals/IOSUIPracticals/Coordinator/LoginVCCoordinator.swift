//
//  LoginVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation
import UIKit

class LoginVCCoordinator: Coordinator {
    
    // MARK: Instance variable
    var LoginNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        LoginNavController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        if let loginVC = UIStoryboard(name: "loginViewController", bundle: nil).instantiateViewController(withIdentifier: "loginViewController") as? MVVMLoginViewController {
            LoginNavController?.pushViewController(loginVC, animated: true)
        }
    }
    
    func finish() {
        LoginNavController?.popViewController(animated: true)
    }
    
    func goToListComments() {
        if let navController = LoginNavController {
            let secondVC = CommentsVCCoordinator(navController)
            secondVC.start()
        }
    }
    
}
