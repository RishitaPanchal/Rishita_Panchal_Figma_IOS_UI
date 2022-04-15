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
        let router = Router()
        var view: AnyView = VIPERView()

        var interactor: AnyInteractor = Interactor()
        var presenter: AnyPresenter = Presenter(interactor)
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = view
    }
    
    var presenter: AnyPresenter?
    
    func update(_ comments: [UserComments]) {
        DispatchQueue.main.async {
            self.users = comments
            self.tableView.reloadData()
            print(comments)
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VIPERCommentCell", for: indexPath) as? VIPERCommentCell else {
                return UITableViewCell()
        }
        //cell.lblName.text = users[indexPath.row].email
        return cell
    }
    
}
