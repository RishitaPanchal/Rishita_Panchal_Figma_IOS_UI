//
//  CustomSwitch.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 03/05/22.
//

import UIKit

class CustomSwitch: UISwitch {

    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        set(width: 34, height: 19)
        self.onTintColor = UIColor.gray
    }
    
    // MARK: - FUnctions
    func set(width: CGFloat, height: CGFloat) {
        let standardHeight: CGFloat = 31
        let standardWidth: CGFloat = 51
        let heightRatio = height / standardHeight
        let widthRatio = width / standardWidth
        transform = CGAffineTransform(scaleX: widthRatio, y: heightRatio)
    }
    
}
