//
//  TextFeildCustomControl.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 30/04/22.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    // MARK: - Instance variable
    var txtFieldInsets = UIEdgeInsets(top: 16, left: 19.98, bottom: 17, right: 20)
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }

    // MARK: - Overridden method
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: txtFieldInsets)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: txtFieldInsets)
    }
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += leftPadding
        return textRect
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.rightViewRect(forBounds: bounds)
        textRect.origin.x -= rightPadding
        return textRect
    }
    
    // MARK: - IBInspectables
    @IBInspectable var leftPadding: CGFloat = 0
    
    @IBInspectable var rightPadding: CGFloat = 0
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            initLeftIcon()
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }

    
    // MARK: Function
    func initView() {
        self.borderStyle = UITextField.BorderStyle.none
        self.font = R.font.poppinsRegular(size: 14.0)
        self.backgroundColor = UIColor.lightGrayTxtBackground
        layer.cornerRadius = 15
    }
    
    func initLeftIcon() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.contentMode = .scaleAspectFit
        if let image = leftImage {
            leftViewMode = UITextField.ViewMode.always
            imageView.image = image
            leftView = imageView
        } else {
            leftViewMode = UITextField.ViewMode.never
            leftView = nil
        }
    }
    
}
    

