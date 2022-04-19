//
//  PutPatchDeleteViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 28/03/22.
//

import UIKit

class PutPatchDeleteViewController: UIViewController {

    // MARK: Overriden method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBActions
    @IBAction func put(_ sender: UIButton) {
        let update = UploadData(name: "Rishita", job: "abc")
        putData(data: update)
    }
    
    @IBAction func patch(_ sender: UIButton) {
        let update = UploadData(name: "Rishita", job: "abc")
        patchData(data: update)
    }
    
    @IBAction func deleteData(_ sender: UIButton) {
        deleteData()
    }
    
    // MARK: Functions
    func deleteData() {
        let request = urlConncetion(url: "https://reqres.in/api/users/2", httpMethod: "DELETE")
        dataTask(urlRequest: request, httpMethod: "DELETE")
    }
    
    func dataTask(urlRequest: URLRequest, httpMethod: String) {
        URLSession.shared.dataTask(with: urlRequest) { [weak self] data, urlResponse, error in
            guard error == nil else {
                print("Error: error calling delete!!")
                return
            }
            guard let responseData = data else {
                print("Did not recieve data!")
                return
            }
            if let urlResponse = urlResponse as? HTTPURLResponse {
                print("URLResponse: \(urlResponse.statusCode)")
                self?.showAlert(httpMethod,"Code: \(urlResponse.statusCode)")
            }
            do {
                try JSONSerialization.jsonObject(with: responseData, options: [])
            } catch let error {
                print("\(error.localizedDescription)")
            }
        }.resume()
    }
    
    func patchData(data: UploadData) {
        var urlRequest = urlConncetion(url: "https://reqres.in/api/users/2", httpMethod: "PATCH")
        do {
            urlRequest.httpBody = try JSONEncoder().encode(data)
        } catch let error {
            print("Json parsing error: \(error.localizedDescription)")
        }
        
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        dataTask(urlRequest: urlRequest, httpMethod: "PATCH")
    }
    
    func showAlert(_ title: String, _ message: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "\(title)", message: "Status : \(message)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (action) in
                print("canceld")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func putData(data: UploadData) {
        var urlRequest = urlConncetion(url: "https://reqres.in/api/login", httpMethod: "PUT")
            do {
                urlRequest.httpBody = try JSONEncoder().encode(data)
            } catch let error {
                print("Json parsing error: \(error.localizedDescription)")
            }
            
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
            dataTask(urlRequest: urlRequest, httpMethod: "PUT")
    }
    
    func urlConncetion(url: String, httpMethod: String) -> URLRequest {
        guard let url = URL(string: url) else {
            print("Url connection failed!")
            return URLRequest.init(url: URL(fileURLWithPath: url))
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethod
        return urlRequest
    }
    
}
