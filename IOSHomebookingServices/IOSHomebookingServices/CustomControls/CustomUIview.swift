//
//  DesignableUIView.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 02/05/22.
//

import UIKit

class CustomUIview: UIView {
    
    // MARK: Initializers
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

class CustomViewTableView: UIView {
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }
    
    func initView() {
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 5

    }
    
    // MARK: - Overridden method
    override func layoutSubviews() {
        roundCorners(corners: [.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 20.0)
    }
    
    /// function to init style of view
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
          let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
          let mask = CAShapeLayer()
          mask.path = path.cgPath
          layer.mask = mask
    }
    
}
