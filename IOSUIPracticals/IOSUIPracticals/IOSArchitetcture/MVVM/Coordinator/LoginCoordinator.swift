//
//  LoginCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    // MARK: Instance variable
    var SignUpNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        SignUpNavController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        
        print("callerdddd")

        if let signUpVC = UIStoryboard(name: "SignUpViewController", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController {
            SignUpNavController?.pushViewController(signUpVC, animated: true)
        }
        print("caller")
    }
    
    func finish() {
        SignUpNavController?.popViewController(animated: true)
    }
    
}
