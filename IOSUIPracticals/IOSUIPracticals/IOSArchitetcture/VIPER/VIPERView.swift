//
//  VIPERView.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import UIKit

protocol AnyView {
    var presenter: AnyPresenter? { get set }
    func update(_ comments: [UserComments])
    func update(_ error: String)
}

class VIPERView: UIViewController, AnyView {

    var users: [UserComments] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        Router.start(vc: self)
    }
    
    var presenter: AnyPresenter?
    
    func update(_ comments: [UserComments]) {
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else { return }
            self.users = comments
            print(comments)
            self.tableView.reloadData()
        }
    }
    
    func update(_ error: String) {
        print(error)
    }
    
}

extension VIPERView: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

}

extension VIPERView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? VIPERCommentCell else {
                return UITableViewCell()
        }
        cell.lblName.text = users[indexPath.row].email
        cell.lblComment.text = users[indexPath.row].body
        return cell
    }
    
}
