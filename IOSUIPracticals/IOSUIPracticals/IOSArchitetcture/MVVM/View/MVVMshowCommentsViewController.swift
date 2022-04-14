//
//  ListCommentsViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import UIKit

class MVVMshowCommentsViewController: UIViewController {

    
    var authenticationVM = LoginViewModel()
    var userComments = [Comments]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        getDataFromDynamics()
        authenticationVM.showUsersComments()
    }
    
    func getDataFromDynamics() {
        authenticationVM.dynamic.bind { data in
            guard data != nil else { return }
            self.tableView.reloadData()
        }
    }
    
}

extension MVVMshowCommentsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

extension MVVMshowCommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ListCommentCell.loadData(tableView, authenticationVM.dynamic.value!, indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return authenticationVM.dynamic.value?.count ?? 0
    }
    
}
