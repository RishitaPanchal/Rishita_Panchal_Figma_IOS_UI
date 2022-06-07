//
//  ViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

class LoginViewController: UIViewController, CoordinatorBoard {
    
    // MARK:
    @IBOutlet weak var txtUsername: CustomTextField!
    @IBOutlet weak var txtPassword: CustomTextFieldPassword!
    
    var loginViewCoordinator: AuthenticationCoordinator?
    var appCoordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeStatusBarColor()
        configureTapGesture(viewController: self)
        setNavigationBarTintColor()
        configureBarButton()
        applyDelegate()
    }
    
    func applyDelegate() {
        txtUsername.delegate = self
        txtPassword.delegate = self
    }
    @IBAction func goToSIgnUpVC(_ sender: UIButton) {
        loginViewCoordinator?.goTosignUpVC()
    }
    
    func setNavigationBarTintColor() {
        navigationController?.navigationBar.prefersLargeTitles = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.navyBlue
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
}


extension LoginViewController: UITextFieldDelegate {
        
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
            case txtUsername:
                txtPassword.becomeFirstResponder()
            default:
                txtPassword.resignFirstResponder()
        }
        return true
    }

}


