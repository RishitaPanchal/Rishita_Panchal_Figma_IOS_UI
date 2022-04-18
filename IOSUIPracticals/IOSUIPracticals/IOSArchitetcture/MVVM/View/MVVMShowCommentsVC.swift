//
//  ListCommentsViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import UIKit

class MVVMShowCommentsVC: UIViewController, CoordinatorBoard {

    // MARK: Instance variable
    var viewModel = LoginViewModel()
    var userComments = [Comments]()
    var coordinator: ArchitectureCoordinator?
    
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
            guard let data = data else { return }
            self.userComments = data
            self.tableView.reloadData()
        }
    }
    
}

// MARK: Extension comforming Tableview delegate
extension MVVMShowCommentsVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

// MARK: Extension comforming Tableview Datasource
extension MVVMShowCommentsVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ListCommentCell.loadData(tableView, userComments, indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userComments.count
    }
    
}
