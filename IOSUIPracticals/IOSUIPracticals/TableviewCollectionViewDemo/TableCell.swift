//
//  TableCell.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/03/22.
//

import UIKit

class TableCell: UITableViewCell {

    // MARK: IBAction
    @IBOutlet weak var label: UILabel!
    
    // MARK: Load data Function 
    static func loadData(_ tableView: UITableView, items: [String], indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as? TableCell else {
            return UITableViewCell()
        }
        cell.label.text = items[indexPath.row]
        return cell
    }
    
}
