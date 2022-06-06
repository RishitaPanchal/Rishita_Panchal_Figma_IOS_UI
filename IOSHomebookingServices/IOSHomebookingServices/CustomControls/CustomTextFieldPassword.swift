//
//  CustomTextFieldPassword.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 03/05/22.
//

import UIKit

class CustomTextFieldPassword: CustomTextField {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initTextFieldStyle()
    }

    /// function to init password textfield style
    func initTextFieldStyle() {
        self.borderStyle = UITextField.BorderStyle.none
        self.font = R.font.poppinsRegular(size: 14.0)
        self.backgroundColor = UIColor.lightGraytxtField
        layer.cornerRadius = 15
        eyeIcon()
    }

    /// function to apply right icon
    func eyeIcon() {
        let eyeRightIcon = UIButton()
        eyeRightIcon.setImage(UIImage.init(resource: R.image.eyeSlash), for: .normal)
        eyeRightIcon.setImage(UIImage.init(resource: R.image.eye), for: .selected)
        eyeRightIcon.addTarget(self, action: #selector(onEyeButtonClicked), for: .touchUpInside)
        eyeRightIcon.isSelected = true
        eyeRightIcon.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        eyeRightIcon.tintColor = UIColor.gray
        self.rightView = eyeRightIcon
        self.rightViewMode = .always
    }

    /// action to right icon
    @objc func onEyeButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        self.isSecureTextEntry = sender.isSelected
    }
    
}
