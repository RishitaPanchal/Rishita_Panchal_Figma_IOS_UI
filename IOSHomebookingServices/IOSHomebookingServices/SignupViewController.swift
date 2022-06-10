//
//  SIgnUpViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 03/05/22.
//

import UIKit
import UserNotifications
import CoreData

class SIgnUpViewController: BaseViewController<AuthenticationCoordinator, LoginViewModel> {

    // MARK: IBOutlets
    @IBOutlet weak var txtUsername: CustomTextField!
    @IBOutlet weak var txtSurname: CustomTextField!
    @IBOutlet weak var txtPhone: CustomTextField!
    @IBOutlet weak var txtEmail: CustomTextField!
    @IBOutlet weak var txtLocation: CustomTextField!
    var registrationData = [NSManagedObject]()
    
    // MARK: - Overridden methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeStatusBarColor()
        changeStatusBarColor()
        configureTapGesture(viewController: self)
        configureBarButton()
        applyDelegates()
    }
    
    // MARK: - Functions
    func applyDelegates() {
        txtUsername.delegate = self
        txtSurname.delegate = self
        txtPhone.delegate = self
        txtEmail.delegate = self
        txtLocation.delegate = self
    }
    
    func checkEmptyFields() -> Bool{
        (txtPhone.text == "" || txtEmail.text == "" || txtUsername.text == "" || txtSurname.text == "") ? false : true
    }
    
    // MARK: IBActions
    @IBAction func goToSignUp(_ sender: UIButton) {
        print("hello")
    }
    
    @IBAction func saveData(_ sender: UIButton) {
        if checkEmptyFields() {
            let dict = [
                    "userName": txtUsername.text,
                    "surname": txtSurname.text,
                    "phone": txtPhone.text,
                    "email": txtEmail.text,
                    "location": txtLocation.text
                ]
            DatabaseHelper.shared.save(object: dict) { status in
                (status) ? coordinator?.redirectToCoreDBVC() : showAlert(message: "Ooops!! Something went wrong!!")
            }
            DatabaseHelper.shared.retriveData() { data in
            self.registrationData.append(data)
            }
        } else {
            print("Empty fields")
        }
    }
    
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Result", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

// MARK: Extensionss
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
