//
//  SIgnUpViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 03/05/22.
//

import UIKit

class SignupViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var txtUsername: CustomTextField!
    @IBOutlet weak var txtSurname: CustomTextField!
    @IBOutlet weak var txtPhone: CustomTextField!
    @IBOutlet weak var txtEmail: CustomTextField!
    @IBOutlet weak var txtLocation: CustomTextField!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeStatusBarColor()
        configureBarButton()
        changeStatusBarColor()
        setNavigationBarTintColor()
        configureTapGesture(viewController: self)
        applyDelegates()
    }
    
    // MARK: Functions
    
    /// Function to change appearance of navigationbar
    func setNavigationBarTintColor() {
        navigationController?.navigationBar.prefersLargeTitles = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.navyBlue
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    /// function to apply textfield delegate
    func applyDelegates() {
        txtUsername.delegate = self
        txtSurname.delegate = self
        txtPhone.delegate = self
        txtEmail.delegate = self
        txtLocation.delegate = self
    }
    
}

// MARK: Textfield delegate Extension
extension SignupViewController: UITextFieldDelegate {
    
    /// function for return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case txtUsername:
            txtSurname.becomeFirstResponder()
        case txtSurname:
            txtPhone.becomeFirstResponder()
        case txtPhone:
            txtEmail.becomeFirstResponder()
        case txtEmail:
            txtLocation.becomeFirstResponder()
        default:
            txtLocation.resignFirstResponder()
        }
        return true
    }
    
}
