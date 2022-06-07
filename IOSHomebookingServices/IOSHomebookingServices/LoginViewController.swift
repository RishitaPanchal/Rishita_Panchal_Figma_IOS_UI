//
//  ViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

class LoginViewController: BaseViewController<AuthenticationCoordinator, LoginViewModel> {
    
    // MARK: - IBOutlets
    @IBOutlet weak var txtUsername: CustomTextField!
    @IBOutlet weak var txtPassword: CustomTextFieldPassword!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var response: String? = nil

    // MARK: - Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        styleActivityIndicator()
        self.changeStatusBarColor()
        setNavigationBarTintColor()
        configureBarButton()
        setData()
        getData()
        applyDelegate()
    }

    // MARK: - Functions
    func setData() {
        txtUsername.text = "eve.holt@reqres.in"
        txtPassword.text = "cityslicka"
    }
    
    func styleActivityIndicator() {
        activityIndicator.style = .large
        activityIndicator.color = .red
        activityIndicator.hidesWhenStopped = true
    }
    
    func applyDelegate() {
        txtUsername.delegate = self
        txtPassword.delegate = self
    }
    
    func getData() {
        viewModel.onSuccedd.bind { [weak self] token in
            self?.response = token
        }
        viewModel.onFailure.bind { [weak self] error in
            self?.response = error
        }
        viewModel.isLoading.bind { [weak self] status in
            (status) ? self?.activityIndicator.startAnimating() : self?.activityIndicator.stopAnimating()
        }
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Result", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func setNavigationBarTintColor() {
        navigationController?.navigationBar.prefersLargeTitles = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.navyBlue
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    // MARK: - IBActions
    @IBAction func goToSIgnUpVC(_ sender: UIButton) {
        self.coordinator?.goTosignUpVC()
    }
    
    @IBAction func performLogin(_ sender: UIButton) {
        viewModel.validateUser(txtUsername.text ?? "nil", txtPassword.text ?? "nil")
        viewModel.loginCompletionHandler { [weak self] status in
            status ? self?.coordinator?.goTosignUpVC() : self?.showAlert(message: self?.response ?? "nil")
        }
    }

}

// MARK: - Extensions
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


