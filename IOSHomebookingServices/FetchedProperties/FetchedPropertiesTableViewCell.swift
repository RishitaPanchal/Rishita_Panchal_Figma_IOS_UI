//
//  FetchedPropertiesTableViewCell.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 20/06/22.
//

import UIKit

class FetchedPropertiesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblPersonName: UILabel!

    static func initData(cell: FetchedPropertiesTableViewCell, tableView: UITableView, indexpath: IndexPath, data: [PersonBuisness]) {
        cell.lblPersonName.text = data[indexpath.row].name
    }
    
}
