//
//  ListUsersAFViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 29/03/22.
//

import UIKit


class ListUsersAFViewController: UIViewController {
    
    // MARK: Instance variable
    var index: Int?
    var usersData = [User]()
    
    // MARK: IBOutlets
    @IBOutlet weak var tblListUser: UITableView!
    
    // MARK: Overriden methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tblListUser.dataSource = self
        tblListUser.delegate =  self
        tblListUser.rowHeight = 160.0
        tblListUser.estimatedRowHeight = UITableView.automaticDimension
        getUserInfowithAlamofire()
    }
    
    // MARK: Functions
    func getUserInfowithAlamofire() {
        let data = APIServices()
        let endPoint = APIServices.UrlEncoding.evaluate(urls: .listUsers)
        guard let url = URL(string: "\(data.baseUrl + endPoint)") else { return }
        APIServices.shared.request(typeT: MainData.self , apiUrl: .listUsers, param: nil, url: url) { [weak self] response, code in
            guard let responseData = response else { return }
            self?.usersData = responseData.data
            self?.tblListUser.reloadData()
        } error: { }
    }
    
}

// MARK: Tableview Delegate
extension ListUsersAFViewController: UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath:
                   IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: Tableview DataSource
extension ListUsersAFViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = UsersAFTableViewCell()
        return userCell.loadData(tblListUser, usersData, indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = usersData[indexPath.row].id
        print(index ?? 0)
        self.performSegue(withIdentifier: "InputVCToDisplayVC", sender: self)
    }
    
    // MARK: Prepare to send data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "InputVCToDisplayVC"){
                let displayVC = segue.destination as! SingleUserViewController
            displayVC.id = index ?? 0
        }
    }
    
}
