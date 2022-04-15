//
//  ListCommentsViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import UIKit

class MVVMshowCommentsViewController: UIViewController {

    // MARK: Instance variable
    var viewModel = LoginViewModel()
    var userComments = [Comments]()
    
    // MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        getDataFromDynamics()
        viewModel.showUsersComments()
    }
    
    // MARK: Function
    func getDataFromDynamics() {
        viewModel.commentsList.bind { data in
            guard data != nil else { return }
            self.tableView.reloadData()
        }
    }
    
}

// MARK: Extension comforming Tableview delegate
extension MVVMshowCommentsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

// MARK: Extension comforming Tableview Datasource
extension MVVMshowCommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ListCommentCell.loadData(tableView, viewModel.commentsList.value!, indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.commentsList.value?.count ?? 0
    }
    
}
