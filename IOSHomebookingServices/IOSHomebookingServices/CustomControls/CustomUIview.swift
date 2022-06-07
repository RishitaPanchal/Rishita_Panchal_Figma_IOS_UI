//
//  DesignableUIView.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 02/05/22.
//

import UIKit

// MARK: - Custom component for View
class CustomUIview: UIView {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Overridden method
    override func layoutSubviews() {
        roundCorners(corners: [.topLeft, .topRight], radius: 40.0)
    }
    
    /// function to init style of view
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
}
