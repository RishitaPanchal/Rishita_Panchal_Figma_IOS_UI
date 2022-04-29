//
//  LoginBasicAutolayoutViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 29/04/22.
//

import UIKit

class LoginBasicAutolayoutViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfEmail.delegate = self
        tfPassword.delegate = self
        configureTapGesture()
    }
    
}

extension LoginBasicAutolayoutViewController: UITextFieldDelegate {
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case tfEmail:
            tfPassword.becomeFirstResponder()
        default:
            tfPassword.resignFirstResponder()
        }
        return true
    }
    
}
