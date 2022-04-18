//
//  VIPERCommentCell.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import UIKit

class VIPERCommentCell: UITableViewCell {

    // MARK: IBoutlets
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblComment: UILabel!

    // MARK: Load data Function
    static func loadData(tableView: UITableView, userComments: [UserComments], indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? VIPERCommentCell else { return UITableViewCell() }
        cell.lblName.text = userComments[indexPath.row].email
        cell.lblComment.text = userComments[indexPath.row].body
        return cell
    }
    
}
