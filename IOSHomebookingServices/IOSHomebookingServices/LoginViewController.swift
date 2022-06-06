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
    @IBOutlet weak var lblGotoSignUp: CustomBottomLabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: - Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBarButton()
        setNavigationBarTintColor()
        changeStatusBarColor()
        configureTapGesture(viewController: self)
        applyDelegate()
    }
    
    // MARK: - Functions
    
    /// function to apply textfiled delegate
    func applyDelegate() {
        txtUsername.delegate = self
        txtPassword.delegate = self
    }
    
    /// function to change appearance of navigationbar
    func setNavigationBarTintColor() {
        navigationController?.navigationBar.prefersLargeTitles = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.navyBlue
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

}

// MARK: extension UITextfieldDelegate
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
