//
//  Extensions.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 06/05/22.
//

import Foundation
import UIKit

// MARK: - Extension UIViewcontroller
extension UIViewController {

    func changeStatusBarColor() {
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        let statusBarColor = UIColor.navyBlue
        statusBarView.backgroundColor = statusBarColor
        view.addSubview(statusBarView)
    }

    func configureTapGesture(viewController: UIViewController) {
        let tapGesture =  UITapGestureRecognizer(target: self, action: #selector(viewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }

    func configureBarButton() {
        let backButtonView = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 44))
        let imageView = UIImageView(image: UIImage.init(resource: R.image.backIcon))
        imageView.frame = CGRect(x: 20, y: 35, width: 7, height: 13)
        imageView.image = imageView.image!.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor.white
        let label = UILabel(frame: CGRect(x: 30, y: 24, width: 60, height: 34))
        label.textColor = UIColor.white
        label.text = NSLocalizedString(R.string.localizable.back(), comment: R.string.localizable.back())
        backButtonView.addSubview(imageView)
        backButtonView.addSubview(label)
        backButtonView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(revealBackClicked)))
        let barButton = UIBarButtonItem(customView: backButtonView)
        navigationItem.leftBarButtonItem = barButton
    }

    @objc private func revealBackClicked() {
       print("This is login page")
    }

}
