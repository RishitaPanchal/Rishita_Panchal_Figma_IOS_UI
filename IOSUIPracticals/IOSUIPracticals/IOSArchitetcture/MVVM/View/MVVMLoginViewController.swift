//
//  MVVMLoginViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import UIKit

class MVVMLoginViewController: UIViewController {

    var coordinator: LoginVCCoordinator?
    
    var loginStatusMessage: String?
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
   
    var authenticationVM = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let naController = self.navigationController{
            coordinator = LoginVCCoordinator(naController)
        }
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        guard let userEmail = self.tfEmail.text else { return }
        guard let userPassword = self.tfPassword.text else { return }
        authenticationVM.authenticateUsreWith(userEmail, userPassword)
        authenticationVM.loginCompletionHandler { status, message in
            if status{
                self.loginStatusMessage = message + "\(self.authenticationVM.email)"
              /*  let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "ListCommentsViewController") as! MVVMshowCommentsViewController
                        self.navigationController?.pushViewController(secondVC, animated: true)*/
                self.coordinator?.goToListComments()
                print(self.loginStatusMessage ?? "nil")
            } else {
                self.loginStatusMessage = message
                self.showAlert(message: self.loginStatusMessage ?? "nil")
                print(self.loginStatusMessage ?? "nil")
            }
        }
    }

    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
