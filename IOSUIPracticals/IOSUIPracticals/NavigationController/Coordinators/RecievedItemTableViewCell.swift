//
//  RecievedItemTableViewCell.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import UIKit

class RecievedItemTableViewCell: UITableViewCell {

    // MARK: IBOutlet
    @IBOutlet weak var tableViewItems: UILabel!
   
    // MARK: Load data in tableview
    static func loadData(_ tableView: UITableView, receivedItems: [String], indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecievedItemTableViewCell") as? RecievedItemTableViewCell else {
            return UITableViewCell()
        }
        cell.tableViewItems.text = receivedItems[indexPath.row]
        return cell
    }
    
}
