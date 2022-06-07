//
//  DesignableUIButton.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

// MARK: - Custom Button base class
class CustomButton: UIButton {
    
    // MARK: - Overridden method
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }
    
    /// function to init style of button
    func initView() {
        self.layer.cornerRadius = 15.0
        self.layer.backgroundColor = UIColor.lightPink.cgColor
        clipsToBounds = true
    }
    
}

class CustomButtonGoToSignUp: UIButton {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButtonStyle()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initButtonStyle()
    }

    /// function to change gotoSignupButton style
    func initButtonStyle() {
        self.titleLabel?.font = R.font.poppinsBold(size: 14.0)
        self.tintColor = UIColor.darkRed
    }
    
}
