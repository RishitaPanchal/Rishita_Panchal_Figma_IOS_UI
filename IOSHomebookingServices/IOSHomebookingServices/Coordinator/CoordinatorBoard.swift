//
//  Coordinator.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 06/05/22.
//

import Foundation
import UIKit

// MARK: Storyboard Enumeration
enum Storyboard: String {
    case main = "Main"
    case OnBoardingScreen = "OnBoardingScreen"
}

// MARK: Coordinator Board Protocol
protocol CoordinatorBoard {
    static func instantiateFromStoryBoard(from storyboard: Storyboard) -> Self
}

// MARK: CoordinatorBoard Extension
extension CoordinatorBoard where Self: UIViewController {
    
    static func instantiateFromStoryBoard(from storyoard: Storyboard) -> Self {
        let storyBoard = UIStoryboard(name: storyoard.rawValue, bundle: Bundle.main)
        let id = String(describing: self)
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
    
}
