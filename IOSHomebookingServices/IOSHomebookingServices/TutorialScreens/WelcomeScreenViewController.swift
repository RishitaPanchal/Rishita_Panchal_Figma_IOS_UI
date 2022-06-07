//
//  WelcomeScreenViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 09/05/22.
//

import UIKit

class WelcomeScreenViewController: UIViewController, CoordinatorBoard {
    
    // MARK: - Instance variable
    var welcomeScreenCoordinator: AuthenticationCoordinator?
    
    // MARK: - Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBActions
    @IBAction func btnSIgnUp(_ sender: Any) {
        welcomeScreenCoordinator?.goTosignUpVC()
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        welcomeScreenCoordinator?.start()
    }
    
}
