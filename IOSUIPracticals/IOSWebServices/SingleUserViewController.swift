//
//  SingleUserViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 29/03/22.
//

import UIKit

class SingleUserViewController: UIViewController {
    
    // MARK: Instance variable
    var id = 0
    var fullNameText: String?
    
    // MARK: IBOutlets
    @IBOutlet weak var imageAvatar: UIImageView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var putPatchDelete: UISegmentedControl!
    @IBOutlet weak var email: UILabel!
      
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        singleUserDetails()
    }
    
    // MARK: IBActions
    @IBAction func actionPutPatchDelete(_ sender: UISegmentedControl) {
        switch putPatchDelete.selectedSegmentIndex {
        case 0:
            patchData()
        case 1:
            putData()
        case 2:
            deleteData()
        default:
            break
        }
    }
    
    // MARK: Fuctions
    func singleUserDetails() {
        fullName.text = String(id)
        guard let url = URL(string: APIServices.shared.baseUrl + APIServices.UrlEncoding.evaluate(urls: .singleUser) + String(id)) else { return }
        APIServices.shared.request(typeT: SingleUser.self , apiUrl: .singleUser, param: nil, url: url) { [weak self] response, code in
            guard let responseData = response else { return }
            self?.fullName.text = responseData.data.firstName + " " + responseData.data.lastName
            self?.email.text = responseData.data.email
            guard let url = URL(string: responseData.data.avatar) else { return }
            guard let data = try? Data(contentsOf: url) else { return }
            self?.imageAvatar.image = UIImage(data: data)
        } error: { }
    }
    
    func putData() {
        let param  = ["name": "eve.holt@reqres.in",
                      "job": "1234"]
        guard let url = URL(string: APIServices.shared.baseUrl + APIServices.UrlEncoding.evaluate(urls: .putData) + String(id)) else { return }
        APIServices.shared.request(typeT: UploadData.self, apiUrl: .putData, param: param, url: url) { responseData, code in
            guard responseData != nil else { return }
            self.showAlert("PUT", "Response code : \(String(code))")
        } error: { }
    }
    
    func patchData() {
        let data = APIServices()
        let param  = ["name": "eve.holt@reqres.in",
                      "job": "1234"]
        guard let url = URL(string: data.baseUrl + APIServices.UrlEncoding.evaluate(urls: .patchData) + String(id)) else { return }
        APIServices.shared.request(typeT: UploadData.self, apiUrl: .patchData, param: param, url: url) { responseData, code in
            guard responseData != nil else { return }
            self.showAlert("patch", "Response code : \(String(code))")
        } error: { }
    }
    
    func showAlert(_ title: String, _ message: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: "Status : \(message)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (action) in
                print("canceld")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func deleteData() {
        guard let url = URL(string: APIServices.shared.baseUrl + APIServices.UrlEncoding.evaluate(urls: .deleetData) + String(id)) else { return }
        APIServices.shared.request(typeT: DeleteUser.self, apiUrl: .deleetData, param: nil, url: url) { [weak self] responseData, code in
            guard responseData != nil else {
                self?.showAlert("Delete", "Response code : \(String(code))")
                return
            }
        } error: { }
    }
    
}
