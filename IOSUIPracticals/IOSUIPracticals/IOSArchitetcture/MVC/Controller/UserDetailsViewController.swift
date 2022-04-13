//
//  ShowItemsViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 12/04/22.
//

import UIKit

class UserDetailsViewController: UIViewController {

    // MARK: Instance variable
    var userComments = [Comments]()
    
    // MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        fetchComments()
        //getUsers()
    }


    func fetchComments() {
        APiClient.shared.request(url: URL(string: "https://jsonplaceholder.typicode.com/comments"), expecting: [Comments].self) { [self] result in
            switch result {
                case .success(let users):
                    DispatchQueue.main.async {
                        self.userComments = users
                        self.tableView.reloadData()
                    }
                case .failure(_):
                    print("Error")
            }
        }
    }
    
}

// MARK: Extension conforming Tableview Datasource
extension UserDetailsViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userComments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = UserDetailesCell()
        return data.loadData(tableView, userComments, indexPath)
    }
 
}

// MARK: Extension confirming Tableview Delegate
extension UserDetailsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
       
}
