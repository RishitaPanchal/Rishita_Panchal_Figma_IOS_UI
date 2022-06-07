//
//  SIgnUpViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 03/05/22.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var txtUsername: CustomTextField!
    @IBOutlet weak var txtSurname: CustomTextField!
    @IBOutlet weak var txtPhone: CustomTextField!
    @IBOutlet weak var txtEmail: CustomTextField!
    @IBOutlet weak var txtLocation: CustomTextField!
    
    // MARK: - Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeStatusBarColor()
        changeStatusBarColor()
        configureBarButton()
        configureTapGesture(viewController: self)
        applyDelegates()
    }
    
    // MARK: - Functions
    /// function to apply delegate to textfields
    func applyDelegates() {
        txtUsername.delegate = self
        txtSurname.delegate = self
        txtPhone.delegate = self
        txtEmail.delegate = self
        txtLocation.delegate = self
    }
    
}

// MARK: Textfield delegate extension
extension SignUpViewController: UITextFieldDelegate {
    
    /// function to return
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
