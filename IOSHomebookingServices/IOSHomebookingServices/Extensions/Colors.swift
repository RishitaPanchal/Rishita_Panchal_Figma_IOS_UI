//
//  Colors.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 03/05/22.
//

import Foundation
import UIKit

// MARK: - Extension UIColor
extension UIColor {
    
    static let navyBlue = R.color.viewControllerBackground() ?? UIColor.red
    static let lightPink = R.color.buttonBackground() ?? UIColor.systemPink
    static let lightGray = R.color.headerLabel() ?? UIColor.gray
    static let lightGrayTxtBackground = R.color.textfieldBackground() ?? UIColor.gray
    static let redBorderColor = R.color.borderColor() ?? UIColor.red
    static let lightGraySwitchColor = R.color.lightGray() ?? UIColor.gray
    static let blackSetting = R.color.black() ?? UIColor.black
    static let blackAndWhite = R.color.blackAndWhiteColor() ?? UIColor.gray
    static let darkRed = R.color.borderColor() ?? UIColor.red
    static let switchColorGray = R.color.switchCollor() ?? UIColor.gray
    static let greenCOlor = R.color.editButtonColor() ?? UIColor.green
    static let lightGreenColor = R.color.lightGreenColor() ?? UIColor.green
}
