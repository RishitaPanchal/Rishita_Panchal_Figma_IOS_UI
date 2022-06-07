//
//  SettingsTVCell.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 04/05/22.
//

import UIKit

class SettingsTVCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var lblSettingName: CustomLabelSettings!
    @IBOutlet weak var imgSettingIcon: UIImageView!
    @IBOutlet weak var lblSettingStatus: UILabel!
    @IBOutlet weak var btnGo: UIButton!
    @IBOutlet weak var switchSetting: CustomSwitch!
    
    // MARK: Instance variable
    var sections = TableViewData.settingData

    // MARK: Function
    
    /// function to set data in tableview
    func initSettingCell(cell: SettingsTVCell, tableView: UITableView, indexPath: IndexPath) {
        if(sections[indexPath.section].rowDetails[indexPath.row].isSwitch == false) {
            cell.lblSettingName.text = sections[indexPath.section].rowDetails[indexPath.row].settingName
            cell.lblSettingStatus.text = sections[indexPath.section].rowDetails[indexPath.row].settingStatus
            cell.imgSettingIcon.image = UIImage.init(resource: sections[indexPath.section].rowDetails[indexPath.row].imageView, compatibleWith: nil)
            cell.btnGo.isHidden = false
            cell.switchSetting.isHidden = true
        } else {
            cell.lblSettingName.text = sections[indexPath.section].rowDetails[indexPath.row].settingName
            cell.lblSettingStatus.text = sections[indexPath.section].rowDetails[indexPath.row].settingStatus
            cell.imgSettingIcon.image = UIImage.init(resource:sections[indexPath.section].rowDetails[indexPath.row].imageView, compatibleWith: nil)
            cell.btnGo.isHidden = true
            cell.switchSetting.isHidden = false
        }
    }
       
}
