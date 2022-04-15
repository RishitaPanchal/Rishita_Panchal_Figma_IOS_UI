//
//  MVVMLoginViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import UIKit

class MVVMLoginViewController: UIViewController {

    // MARK: Instance variable
    var coordinator: LoginVCCoordinator?
    var loginStatusMessage: String?
    var viewModel = LoginViewModel()
     
    // MARK: IBOutlets
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
   
    // MARK: Overrideen method
    override func viewDidLoad() {
        super.viewDidLoad()
        if let naController = self.navigationController{
            coordinator = LoginVCCoordinator(naController)
        }
    }
    
    // MARK: IBAction
    @IBAction func didTapLogin(_ sender: Any) {
        viewModel.authenticateUsreWith(tfEmail.text ?? "nil", tfPassword.text ?? "nil")
        viewModel.loginCompletionHandler { status, message in
            status ? self.coordinator?.goToListComments() : self.showAlert(message: message)
        }
    }
    
    // MARK: Function
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
