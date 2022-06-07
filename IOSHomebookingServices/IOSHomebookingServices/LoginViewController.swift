//
//  ViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var txtUsername: CustomTextField!
    @IBOutlet weak var txtPassword: CustomTextFieldPassword!
    
    // MARK: - Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeStatusBarColor()
        configureBarButton()
        configureTapGesture(viewController: self)
        applyDelegate()
    }
    
    // MARK: - Function
    ///function to apply textfield delegate
    func applyDelegate() {
        txtUsername.delegate = self
        txtPassword.delegate = self
    }

}

// MARK: - Extension to Textfield delegate
extension LoginViewController: UITextFieldDelegate {
        
    /// function to return 
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


