//
//  AlamofireViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 29/03/22.
//

import UIKit
import Alamofire

class AlamofireViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: Overriden method
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView?.showsVerticalScrollIndicator = false
        tfEmail.text = "eve.holt@reqres.in"
        tfPassword.text = "cityslicka"
    }
   
    // MARK: IBActions
    @IBAction func loginUser(_ sender: UIButton) {
        let user = UserRequest(email: tfEmail.text, password: tfPassword.text)
        loginUser(user: user)
    }
    
    // MARK: Functions
    func showAlert(_ message: String) {
        DispatchQueue.main.async { [weak self] in
            let alert = UIAlertController(title: "Message", message: "Status : \(message)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (action) in
                print("canceld")
            }))
            self?.present(alert, animated: true, completion: nil)
        }
    }
    
    func loginUser(user: UserRequest) {
        guard let url = URL(string: "https://reqres.in/api/login") else { return }
        let param  = [
                        "email": "eve.holt@reqres.in",
                        "password": "1234"
                     ]
        AF.request(url, method: .post, parameters: param, encoding: URLEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).response { [weak self] (response) in
            switch response.result {
               
            case .success(let data):
                guard let responseData = data else { return }
                do {
                    _ = try JSONSerialization.jsonObject(with: responseData, options: [])
                    self?.showAlert("\(String(describing: response.response?.statusCode))")
                } catch let error {
                    print("\(error.localizedDescription)")
                }
                break
            case .failure(let error):
                print("\(error.localizedDescription)")
                break
            }
        }
    }
   
}
