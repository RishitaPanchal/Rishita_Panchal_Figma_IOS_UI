//
//  MVPUsersCell.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 13/04/22.
//

import UIKit

class MVPUsersCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    
    // MARK: Fuction for Load data
    static func loadData(_ tableView: UITableView, _ userDetails: [Comments], _ indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MVPTableCell", for: indexPath) as? MVPUsersCell else {
                return UITableViewCell()
        }
        cell.lblFirstName.text = userDetails[indexPath.row].email
        cell.lblLastName.text = userDetails[indexPath.row].body
        return cell
    }
    
}
