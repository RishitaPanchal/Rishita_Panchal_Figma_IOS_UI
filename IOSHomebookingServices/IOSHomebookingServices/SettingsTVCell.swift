//
//  SettingsTVCell.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 04/05/22.
//

import UIKit

class SettingsTVCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var imgViewIcon: UIImageView!
    @IBOutlet weak var settingName: UILabel!
    @IBOutlet weak var lblSettingStatus: UILabel!
    @IBOutlet weak var btnGo: UIButton!
    @IBOutlet weak var switchSetting: CustomSwitch!
    
    // MARK: Instance variable
    var sections = TableViewData.settingData

    /// function to load data in tableview
    func initSettingCell(cell: SettingsTVCell, tableView: UITableView, indexPath: IndexPath) {
        if(sections[indexPath.section].rowDetails[indexPath.row].isSwitch == false) {
            cell.settingName.text = sections[indexPath.section].rowDetails[indexPath.row].settingName
            cell.lblSettingStatus.text = sections[indexPath.section].rowDetails[indexPath.row].settingStatus
            cell.imgViewIcon.image = UIImage.init(resource: sections[indexPath.section].rowDetails[indexPath.row].imageView, compatibleWith: nil)
            cell.btnGo.isHidden = false
            cell.switchSetting.isHidden = true
        } else {
            cell.settingName.text = sections[indexPath.section].rowDetails[indexPath.row].settingName
            cell.lblSettingStatus.text = sections[indexPath.section].rowDetails[indexPath.row].settingStatus
            cell.imgViewIcon.image = UIImage.init(resource:sections[indexPath.section].rowDetails[indexPath.row].imageView, compatibleWith: nil)
            cell.btnGo.isHidden = true
            cell.switchSetting.isHidden = false
        }
    }
       
}
      

