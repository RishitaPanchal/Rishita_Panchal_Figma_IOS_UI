//
//  MVPViewControllerView.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 13/04/22.
//

import UIKit

class MVPViewControllerView: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Instance variables
    private let presenter = MVPPresenter()
    private var userDetails = [Comments]()
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        presenter.setViewDelegate(delegate: self)
        presenter.fetchComments()
    }

}

// MARK: Extention conforming TableviewDelegate
extension MVPViewControllerView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

// MARK: Extension Conforming TableviewDatasource
extension MVPViewControllerView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return MVPUsersCell.loadData(tableView, userDetails, indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didTapUser(user: userDetails[indexPath.row])
    }
    
}

// MARK: Extension conforming UserPresenterDelegate
extension MVPViewControllerView: UserDetailesDelegate {
    func showUsersComments(comments: [Comments]) {
        self.userDetails = comments
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
    
}
