//
//  LoginViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 28/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    // MARK: Instance variable
    var token: String?
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView?.showsVerticalScrollIndicator = false
        tfEmail.text = "eve.holt@reqres.in"
        tfPassword.text = "cityslicka"
    }

    // MARK: IBActions
    @IBAction func login(_ sender: Any) {
        let user = UserRequest(email: tfEmail.text, password: tfPassword.text)
        postData(user: user)
    }
    
    // MARK: Fuctions
    func showAlert(_ message: String) {
        DispatchQueue.main.async { [weak self] in
            let alert = UIAlertController(title: "Message", message: "Status : \(message)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (action) in
                   print("canceld")
               }))
            self?.present(alert, animated: true, completion: nil)
        }
    }

    func postData(user: UserRequest) {
        if let url = URL(string: "https://reqres.in/api/login") {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "POST"
            do {
                urlRequest.httpBody = try JSONEncoder().encode(user)
            } catch let error {
                print("Json parsing error: \(error.localizedDescription)")
            }
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] data, urlResponse, error in
                guard let error = error else { return }
                print("Error : \(error.localizedDescription)")
                guard let urlResponse = urlResponse else { return }
                print("URLResponse: \(urlResponse)")
                guard let responseData = data else { return }
                print("data:\(responseData)")
                do {
                    let decoder = JSONDecoder()
                    let userResponse = try decoder.decode(UserResponse.self, from: responseData)
                    self?.showAlert(userResponse.token ?? "Failed to login")
                } catch let error {
                    print("JSON parsing erro : \(error.localizedDescription)")
                }
            }
            dataTask.resume()
        }
    }
        
}
    
