//
//  ShowUsersTableViewCell.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 15/06/22.
//

import UIKit
import CoreData

protocol RemoveDataProtocol {
    
    func removeData(index: Int)
    func editData(index: Int)

}

class ShowUsersTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var txtFullName: UILabel!
    @IBOutlet weak var txtEmail: UILabel!
    @IBOutlet weak var txtPhone: UILabel!
    @IBOutlet weak var btnDelete: CustomDeleteButton!
    var indexPath: IndexPath?
    var delegate: RemoveDataProtocol?
    
    // MARK: - Function
    static func initData(cell: ShowUsersTableViewCell, tableView: UITableView, indexpath: IndexPath, data: [NSManagedObject]) {
        var fullName = data[indexpath.row].value(forKey: "username") as! String + " "
        fullName += data[indexpath.row].value(forKey: "surname") as! String
        cell.txtFullName.text = fullName
        cell.txtEmail.text = data[indexpath.row].value(forKey: "email") as? String
        cell.txtPhone.text = data[indexpath.row].value(forKey: "phone") as? String
    }

    // MARK: - IBAction
    @IBAction func performEdit(_ sender: UIButton) {
        delegate?.editData(index: indexPath?.row ?? 1)
    }
    
    @IBAction func performDelete(_ sender: UIButton) {
        delegate?.removeData(index: indexPath?.row ?? 1)
    }
    
}
