//
//  ViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var txtUsername: CustomTextField!
    @IBOutlet weak var txtPassword: CustomTextFieldPassword!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        changeStatusBarColor()
        configureBarButton()
        setNavigationBarTintColor()
        configureTapGesture(viewController: self)
        applyDelegate()
    }
    
    // MARK: - Functions
    
    /// function to change appearance of navigationbar
    func setNavigationBarTintColor() {
        navigationController?.navigationBar.prefersLargeTitles = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.navyBlue
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    /// function to apply textfield delegate
    func applyDelegate() {
        txtUsername.delegate = self
        txtPassword.delegate = self
    }
    
}

// MARK: - Textfield delegate Extension 
extension LoginViewController: UITextFieldDelegate {
        
    /// function for textfield return key
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

