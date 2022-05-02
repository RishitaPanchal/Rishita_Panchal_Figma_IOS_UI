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
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfEmail.delegate = self
        tfPassword.delegate = self
        scrollView?.showsVerticalScrollIndicator = false
        configureTapGesture()
    }
    
    
    @IBAction func login(_ sender: UIButton) {
        if let email = tfEmail.text, let password = tfPassword.text {
            if (!email.isEmailValid()) {
                print("Invalid email")
            } else if(password.count < 8) {
                print("Invalid password")
            } else {
                print("Success")
            }
        }
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


extension String {
    func isEmailValid() -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return applyPredicateOnRegEx(regExStr: regEx)
    }
    
    func applyPredicateOnRegEx(regExStr: String) -> Bool {
        let trimmedString = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regExStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
        return isValidateOtherString
    }
}
