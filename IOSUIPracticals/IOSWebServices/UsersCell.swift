//
//  UsersCell.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 28/03/22.
//

import UIKit

class UsersCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var imgViewAvatar: UIImageView!
    @IBOutlet weak var lblFullName: UILabel!
    
    // MARK: Load data in tableview
    func loadData(_ UserList: UITableView, _ userDetails: [User],_ indexPath: IndexPath) -> UITableViewCell {
        let cell = UserList.dequeueReusableCell(withIdentifier: "Users") as! Self
        cell.lblFullName.text = String(userDetails[indexPath.row].firstName) + String(userDetails[indexPath.row].lastName)
        cell.lblEmail.text = String(userDetails[indexPath.row].email)
        cell.imgViewAvatar.image = UIImage(data: initImage(url: userDetails[indexPath.row].avatar, userDetails: userDetails, indexPath: indexPath))
        return cell
    }
    
    // MARK: Function
    func initImage(url: String, userDetails: [User], indexPath: IndexPath) -> Data{
        let url = URL(string: userDetails[indexPath.row].avatar)
        let data = try? Data(contentsOf: url!)
        return data!
    }

}

  
