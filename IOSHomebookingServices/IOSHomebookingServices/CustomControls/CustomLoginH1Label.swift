//
//  H1LoginDesignableUILabel.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 02/05/22.
//

import UIKit

class CustomLoginH1Label: CustomLabel {
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        initFontStyles()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initFontStyles()
    }
    
    // MARK: - Functions
    func initFontStyles() {
        self.font = R.font.poppinsSemiBold(size: 24.0)
        self.textColor = UIColor.navyBlue
    }
    
}

class CustomLoginH2Label: CustomLabel {
    
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
        self.font = R.font.poppinsRegular(size: 14.0)
        self.textColor = UIColor.lightGray
    }
    
}

class CustomLabelNeedSupport: CustomLabel {
    
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
        self.font = R.font.poppinsLight(size: 13.0)
        self.textColor = UIColor.black
    }
    
}

class CustomOnBoardingTitle: CustomLabel {
    
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
        self.font = R.font.poppinsSemiBold(size: 24.0)
        self.textColor = UIColor.darkRed
    }
    
}

// MARK: Welcome screen labels
class CustomWelcomeLabel: CustomLabel {
    
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
        self.font = R.font.poppinsSemiBold(size: 25.0)
        self.textColor = UIColor.blackAndWhite
    }
    
}

class CustomWelcomeDescriptionLable: CustomLabel {
    
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
        self.textColor = UIColor.black
    }
    
}

class CustomCoreNameLabel: CustomLabel {
    
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
        self.font = R.font.poppinsSemiBold(size: 16.0)
        self.textColor = UIColor.black
    }
    
}

class CustomCoreEmailLabel: CustomLabel {
    
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
        self.font = R.font.poppinsRegular(size: 14.0)
        self.textColor = UIColor.black
    }
    
}



