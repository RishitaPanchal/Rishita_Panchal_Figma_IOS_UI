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
