//
//  DesignableUIButton.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

// MARK: - Custom button base class
class CustomButton: UIButton {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }
    
    /// function to change style of basebutton
    func initView() {
        self.layer.cornerRadius = 15.0
        self.titleLabel?.font = R.font.poppinsBold(size: 14.0)
        self.layer.backgroundColor = UIColor.lightPink.cgColor
        self.tintColor = UIColor.darkRed
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

class CustomOnBoardingSkipBtn: CustomButton {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyBackground()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyBackground()
    }

    /// function to change style of onboarding next button
    func applyBackground() {
        self.layer.cornerRadius = 15.0
        self.layer.backgroundColor = UIColor.darkRed.cgColor
    }
    
}

