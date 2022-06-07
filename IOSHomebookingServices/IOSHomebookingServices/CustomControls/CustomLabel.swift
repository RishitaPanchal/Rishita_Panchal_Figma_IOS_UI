//
//  LabelCustomControl.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

// MARK: - Custom label base class
class CustomLabel: UILabel {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - IBInspectables
    @IBInspectable var borderWidth: CGFloat = 1 {
        didSet {
            layer.borderWidth = self.borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = self.borderColor.cgColor
        }
    }
    
}

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
    
    /// function to init style of label
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
    
    /// function to init style of label
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
    
    /// function to init style of label
    func initFontStyles() {
        self.font = R.font.poppinsLight(size: 13.0)
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
