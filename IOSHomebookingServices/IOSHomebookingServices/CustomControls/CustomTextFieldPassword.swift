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
    }
    
    /// function to init style of textfield
    func initTextField() {
        self.borderStyle = UITextField.BorderStyle.none
        self.font = R.font.poppinsRegular(size: 14.0)
        self.backgroundColor = UIColor.lightGrayTxtBackground
        layer.cornerRadius = 15
        setEyeIcon()
    }
    
    /// function to init right icon of Textfield
    func setEyeIcon() {
        let eyeRightIcon = UIButton()
        eyeRightIcon.setImage(UIImage(systemName: "eye"), for: .normal)
        eyeRightIcon.setImage(UIImage(systemName: "eye.slash"), for: .selected)
        eyeRightIcon.addTarget(self, action: #selector(onEyeButtonClicked), for: .touchUpInside)
        eyeRightIcon.isSelected = true
        eyeRightIcon.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        eyeRightIcon.tintColor = UIColor.gray
        self.rightView = eyeRightIcon
        self.rightViewMode = .always
    }
    
    @objc func onEyeButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        self.isSecureTextEntry = sender.isSelected
    }
    
}
