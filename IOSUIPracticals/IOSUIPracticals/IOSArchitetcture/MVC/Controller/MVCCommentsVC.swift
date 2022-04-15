//
//  ShowItemsViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 12/04/22.
//

import UIKit

class MVCCommentsVC: UIViewController {

    // MARK: Instance variable
    var userComments = [Comments]()
    
    // MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        APiClient.shared.fetchComments(url: "https://jsonplaceholder.typicode.com/comments") { data in
            self.userComments = data
            self.tableView.reloadData()
        }
    }
    
}

// MARK: Extension conforming Tableview Datasource
extension MVCCommentsVC: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userComments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = MVCCeommentCell()
        return data.loadData(tableView, userComments, indexPath)
    }
 
}

// MARK: Extension confirming Tableview Delegate
extension MVCCommentsVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
       
}
