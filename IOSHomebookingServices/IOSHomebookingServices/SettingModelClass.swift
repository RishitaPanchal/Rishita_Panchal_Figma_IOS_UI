//
//  SettingModelClass.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 04/05/22.
//

import Foundation
import Rswift

// MARK: Settings table section model class
class SettingSectionModelClass {
    
    var sectionName: String
    var rowDetails: [SettingsRowDetails]
    
    init(sectionName: String, rowDetails: [SettingsRowDetails]) {
        self.sectionName = sectionName
        self.rowDetails = rowDetails
    }

}

// MARK: Settings table row model class
class SettingsRowDetails {
    
    var imageView: ImageResourceType
    var settingName: String?
    var settingStatus: String?
    var AccountUserImage: String?
    var AccountUserName: String?
    var AccountUserDetail: String?
    var isSwitch: Bool
    
    init(settingIcon: ImageResourceType , settingName: String? = "", settingStatus: String? = "", AccountUserImage: String? = "",AccountUserName: String? = "", AccountUserDetail: String? = "", isSwitch: Bool) {
        self.imageView = settingIcon
        self.settingName = settingName
        self.settingStatus = settingStatus
        self.AccountUserImage = AccountUserImage
        self.AccountUserName = AccountUserName
        self.AccountUserDetail = AccountUserDetail
        self.isSwitch = isSwitch
    }
    
}

// MARK: Settings tableview data
class TableViewData {
    
    static let settingData = [
        SettingSectionModelClass(
            sectionName: "Account",
            rowDetails: [
                SettingsRowDetails (
                    settingIcon: R.image.avatorprofileImage,
                    AccountUserName: "Vanessa Luo",
                    AccountUserDetail: "vannessaluo@gmail.com",
                    isSwitch: false
                )
            ]
        ),
        SettingSectionModelClass(
            sectionName: "Settings",
            rowDetails: [
                SettingsRowDetails (settingIcon: R.image.settingDarkMode, settingName: "Dark Mode", settingStatus: "off", isSwitch: true),
                SettingsRowDetails (settingIcon: R.image.settingLanguage, settingName: "Language", settingStatus: "English", isSwitch: false),
                SettingsRowDetails (settingIcon:  R.image.settingNotification, settingName: "Notifications", isSwitch: false),
                SettingsRowDetails (settingIcon:  R.image.settingLoginAndSecurity, settingName: "Logins and security", isSwitch: false),
                SettingsRowDetails (settingIcon:  R.image.settingPayment, settingName: "Payments", isSwitch: false)
            ]
        )
    ]
    
}
