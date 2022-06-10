//
//  CRUDViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 15/06/22.
//

import UIKit
import CoreData

class CRUDViewController: BaseViewController<AuthenticationCoordinator, LoginViewModel> {

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Instance Variables
    var registrationData = [NSManagedObject]()
    
    // MARK: - Overridden methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarTintColor()
        configureSettingBarButton()
        getData()
    }

    // MARK: - Functions
    func getData() {
        DatabaseHelper.shared.retriveData() { data in
            self.registrationData.append(data)
        }
    }
    
    func configureSettingBarButton() {
        let barButton = UIBarButtonItem(image: R.image.vectorback(), style: .done, target: self, action: #selector(backClicked))
        self.navigationController?.setTintColor(.black)
        let navigationFont = UIFont(name: R.font.poppinsRegular.fontName, size: 16)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: navigationFont!]
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    @objc func backClicked() {
       print("Back pressed")
    }
    
    func setNavigationBarTintColor() {
        navigationController?.navigationBar.prefersLargeTitles = false
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.white
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

}

// MARK: - UITableViewDelegate Extension
extension CRUDViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}

// MARK: - UITableviewDataSource Extension
extension CRUDViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return registrationData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ShowUsersTableViewCell", for: indexPath) as? ShowUsersTableViewCell else { return UITableViewCell() }
        ShowUsersTableViewCell.initData(cell: cell, tableView: tableView, indexpath: indexPath, data: registrationData)
        cell.delegate = self
        cell.indexPath = indexPath
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .normal, title: "Delete") { (action, view, handler) in
            if DatabaseHelper.shared.deleteDetailes(id: self.registrationData[indexPath.row].value(forKey: "rid") as? String ?? "nil") ?? false {
                self.registrationData.remove(at: indexPath.item)
                self.tableView.deleteRows(at: [indexPath], with: .automatic)
                self.tableView.reloadData()
            } else {
                print("Failed to delete")
            }
        }
        deleteAction.backgroundColor = .red
        let config = UISwipeActionsConfiguration(actions: [deleteAction])
        return config
    }
    
}

extension CRUDViewController: RemoveDataProtocol {
    
    func removeData(index: Int) {
        if DatabaseHelper.shared.deleteDetailes(id: self.registrationData[index].value(forKey: "rid") as? String ?? "nil") ?? false {
            self.registrationData.remove(at: index)
            self.tableView.reloadData()
        } else {
            print("Failed to delete")
        }
    }
    
    func editData(index: Int) {
        DatabaseHelper.shared.addAlertBox(viewController: self) { [weak self] email, phone in
            if DatabaseHelper.shared.updateData(id: self?.registrationData[index].value(forKey: "rid") as? String ?? "nil", email: email ?? "nil", phone: phone ?? "nil") {
                self?.tableView.reloadData()
            } else {
                print("Failed to delete")
            }
        }
    }
    
}
