//
//  CustomLabelSettings.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 05/05/22.
//

import Foundation
import UIKit


class CustomLabelSettings: CustomLabel {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initFontStyles()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initFontStyles()
    }
    
    // MARK: Functions
    func initFontStyles() {
        self.font = R.font.poppinsRegular(size: 16.0)
        self.textColor = UIColor.blackSetting
    }
    
}

class CustomLabelSettingAccount: CustomLabel {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initFontStyles()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initFontStyles()
    }
    
    // MARK: Functions
    func initFontStyles() {
        self.font = R.font.poppinsRegular(size: 18.0)
        self.textColor = UIColor.black
    }
    
}

class CustomLabelSettingStatus: CustomLabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initFontStyles()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initFontStyles()
    }
    
    // MARK: Functions
    func initFontStyles() {
        self.font = R.font.poppinsRegular(size: 12.0)
        self.textColor = UIColor.blackAndWhite
    }
    
}
