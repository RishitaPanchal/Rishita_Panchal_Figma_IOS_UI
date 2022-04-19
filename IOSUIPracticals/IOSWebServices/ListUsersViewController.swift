//
//  ListUsersViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 28/03/22.
//

import UIKit

class ListUsersViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var progressStatus: UIActivityIndicatorView!
    @IBOutlet weak var tblUserList: UITableView!
    @IBOutlet weak var imgViewAvatar: UIImageView!
    
    // MARK: Instance variable
    var userDetails = [User]()

    // MARK: Overriden method
    override func viewDidLoad() {
        super.viewDidLoad()
        progressStatus.startAnimating()
        tblUserList.dataSource = self
        tblUserList.delegate = self
        listUsers()
        tblUserList.rowHeight = 160.0
        tblUserList.estimatedRowHeight = UITableView.automaticDimension
       
    }

    // MARK: Functions
    func listUsers() {
        if let url = URL(string: "https://reqres.in/api/users?delay=3") {
            let urlRequest = URLRequest(url: url)
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] data, urlResponse, error in
                if error != nil { print("error: \(String(describing: error?.localizedDescription))") }
                guard let urlResponse = urlResponse else { return }
                print("URLResponse: \(urlResponse)")
                guard let responseData = data else { return }
                do {
                    let userResponse = try JSONDecoder().decode(MainData.self, from: responseData)
                    DispatchQueue.main.async { [weak self] in
                        self?.progressStatus.stopAnimating()
                        self?.progressStatus.isHidden = true
                        self?.tblUserList.reloadData()
                    }
                    self?.userDetails = userResponse.data
                } catch let error {
                    print("JSON parsing erro : \(error.localizedDescription)")
                }
            }
            dataTask.resume()
        }
    }
    
}

// MARK: Tableview datsource
extension  ListUsersViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let initData = UsersCell()
        return initData.loadData(tblUserList, userDetails, indexPath)
    }
    
}

// MARK: Tableview Delegate
extension ListUsersViewController: UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
