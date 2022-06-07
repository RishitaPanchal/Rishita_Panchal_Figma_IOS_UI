//
//  DesignableUIButton.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

// MARK: - Custom button base class
class CustomButton: UIButton {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }
    
    /// functin to init style of button
    func initView() {
        self.layer.cornerRadius = 15.0
        self.titleLabel?.font = R.font.poppinsBold(size: 14.0)
        self.layer.backgroundColor = UIColor.lightPink.cgColor
        self.tintColor = UIColor.darkRed
    }
    
}

class CustomButtonGoToSignUp: UIButton {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.titleLabel?.font = R.font.poppinsBold(size: 14.0)
        self.tintColor = UIColor.darkRed
    }
    
}

class CustomOnBoardingSkipBtn: CustomButton {
        
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyBackground()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyBackground()
    }
    
    /// function to init style of button
    func applyBackground() {
        self.layer.cornerRadius = 15.0
        self.layer.backgroundColor = UIColor.darkRed.cgColor
    }
    
}

class CustomLoginButtonWelcomeScreen: CustomButton {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyBackground()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyBackground()
    }
    
    /// function to init style of button
    func applyBackground() {
        self.layer.cornerRadius = 15.0
        self.layer.backgroundColor = UIColor.darkRed.cgColor
        self.titleLabel?.font = R.font.poppinsBold(size: 14.0)
        self.tintColor = UIColor.white
    }
    
}


class CustomSignupButtonWelcomeScreen: CustomButton {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyBackground()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyBackground()
    }
    
    /// function to init view of button
    func applyBackground() {
        self.layer.cornerRadius = 15.0
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.borderColor = UIColor.darkRed.cgColor
        self.layer.borderWidth = 1
        self.titleLabel?.font = R.font.poppinsBold(size: 14.0)
        self.tintColor = UIColor.darkRed
    }
    
}

