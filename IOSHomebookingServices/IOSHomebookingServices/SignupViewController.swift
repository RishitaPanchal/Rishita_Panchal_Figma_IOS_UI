//
//  SIgnUpViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 03/05/22.
//

import UIKit

class SIgnUpViewController: UIViewController, CoordinatorBoard {

    @IBOutlet weak var txtUsername: CustomTextField!
    @IBOutlet weak var txtSurname: CustomTextField!
    @IBOutlet weak var txtPhone: CustomTextField!
    @IBOutlet weak var txtEmail: CustomTextField!
    @IBOutlet weak var txtLocation: CustomTextField!
    
    var signUpCoordinator: AuthenticationCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeStatusBarColor()
        changeStatusBarColor()
        configureTapGesture(viewController: self)
        configureBarButton()
        applyDelegates()
    }
    
    func applyDelegates() {
        txtUsername.delegate = self
        txtSurname.delegate = self
        txtPhone.delegate = self
        txtEmail.delegate = self
        txtLocation.delegate = self
    }
    
    @IBAction func goToSignUp(_ sender: UIButton) {
    }
}

extension SIgnUpViewController: UITextFieldDelegate {
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
