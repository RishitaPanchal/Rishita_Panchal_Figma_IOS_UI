//
//  LabelCustomControl.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

// MARK: - Custom label Baseclass
class CustomLabel: UILabel {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

// MARK: H1Label CustomCOntrol
class CustomH1LabelLogin: CustomLabel {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initH2LabelStyle()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initH2LabelStyle()
    }

    /// init style of H1Label of Sign in screen
    func initH2LabelStyle() {
        self.font = R.font.poppinsSemiBold(size: 24.0)
        self.textColor = UIColor.navyBlue
    }
    
}

// MARK: - H2Label CustomControl
class CustomeH2LabelLogin: CustomLabel {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initLabelStyle()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initLabelStyle()
    }
    
    /// init style of H2Label of Sign in screen
    func initLabelStyle() {
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

    /// init style of need support of Sign in screen
    func initFontStyles() {
        self.font = R.font.poppinsLight(size: 14.0)
        self.textColor = UIColor.lightGray
    }
    
}

class CustomBottomLabel: CustomLabel {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initFontStyles()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initFontStyles()
    }

    /// init style of bottom label of Sign in screen
    func initFontStyles() {
        self.font = R.font.poppinsLight(size: 14.0)
        self.textColor = UIColor.lightGray
    }
    
}
