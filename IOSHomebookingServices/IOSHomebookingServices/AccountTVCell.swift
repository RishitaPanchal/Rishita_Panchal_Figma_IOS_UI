//
//  AccountTVCell.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 04/05/22.
//

import UIKit

class AccountTVCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    // MARK: - Instance variable
    var sections = TableViewData.settingData
    
    /// function to load data in account cell
    func initAccountCell(cell: AccountTVCell, tableView: UITableView, indexPath: IndexPath) {
        cell.title.text = sections[0].rowDetails[0].AccountUserName
        cell.subTitle.text = sections[0].rowDetails[0].AccountUserDetail
        cell.img.image = UIImage.init(resource: sections[0].rowDetails[0].imageView)
    }

}
