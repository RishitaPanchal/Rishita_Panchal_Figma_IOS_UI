//
//  MVVMLoginViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import UIKit

class MVVMLoginViewController: UIViewController {

    var coordinator: LoginCoordinator?
    
    var loginStatusMessage: String?
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
   
    var authenticationVM = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        guard let userEmail = self.tfEmail.text else { return }
        guard let userPassword = self.tfPassword.text else { return }
        authenticationVM.authenticateUsreWith(userEmail, userPassword)
        authenticationVM.loginCompletionHandler { status, message in
            if status{
                self.loginStatusMessage = message + "\(self.authenticationVM.email)"
                self.coordinator?.start()
                print(self.loginStatusMessage ?? "nil")
            } else {
                self.loginStatusMessage = message
                print(self.loginStatusMessage ?? "nil")
            }
        }
    }
    
}
