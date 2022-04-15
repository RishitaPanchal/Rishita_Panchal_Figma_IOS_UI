//
//  ListCommentCell.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import UIKit

class ListCommentCell: UITableViewCell {
    
    // MARK: IBOutlets
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblComments: UILabel!
    
    // MARK: Fuction for Load data
    static func loadData(_ tableView: UITableView, _ comments: [Comments], _ indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCommentCell", for: indexPath) as? ListCommentCell else {
                return UITableViewCell()
        }
        cell.lblName.text = comments[indexPath.row].email
        cell.lblComments.text = comments[indexPath.row].body
        return cell
    }
    
}
