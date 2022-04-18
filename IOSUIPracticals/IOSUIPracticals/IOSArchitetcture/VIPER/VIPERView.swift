//
//  VIPERView.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import UIKit

class VIPERView: UIViewController, VViewProtocol {

    // MARK: Instance variable
    var usersComments: [UserComments] = []
    var presenter: VPresenterProtocol?
    
    // MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: Protocol methods
    func update(_ comments: [UserComments]) {
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else { return }
            self.usersComments = comments
            print(comments)
            self.tableView.reloadData()
        }
    }
    
    func update(_ error: String) {
        print(error)
    }
    
}

// MARK: Extension comforming TableviewDelegate
extension VIPERView: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

}

// MARK: Extension comforming TableViewDataSource
extension VIPERView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersComments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return VIPERCommentCell.loadData(tableView: tableView, userComments: usersComments, indexPath: indexPath)
    }
    
}
