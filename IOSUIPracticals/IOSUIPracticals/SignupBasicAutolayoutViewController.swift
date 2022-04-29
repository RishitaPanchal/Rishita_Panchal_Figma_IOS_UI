//
//  SignupBasicAutolayoutViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 29/04/22.
//

import UIKit

class SignupBasicAutolayoutViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tfFullname: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
   
    // MARK: - Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        tfFullname.delegate = self
        tfEmail.delegate =  self
        tfPassword.delegate = self
        configureTapGesture()
    }

}

// MARK: - Extension Textfeild
extension SignupBasicAutolayoutViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
            case tfFullname:
                tfEmail.becomeFirstResponder()
            case tfEmail:
                tfPassword.becomeFirstResponder()
            case tfPassword:
                tfPassword.resignFirstResponder()
            default:
                tfPassword.becomeFirstResponder()
        }
        return true
    }
    
}

// MARK: UIViewController Extension
extension UIViewController {
    
    func configureTapGesture() {
        let tapGesture =  UITapGestureRecognizer(target: self, action: #selector(SignupBasicAutolayoutViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}
