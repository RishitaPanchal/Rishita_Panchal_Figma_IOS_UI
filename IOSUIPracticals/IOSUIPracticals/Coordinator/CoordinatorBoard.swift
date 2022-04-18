//
//  StoryBoarded.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 18/04/22.
//

import Foundation
import UIKit

enum Storyboard: String {
    case main = "Main"
    case MVCDemo = "MVCCommentsList"
    case MVPDemo = "MVPCommentsList"
    case MVVMDemo = "MVVMUsingCoordinator"
    case VIPERDemo = "VIPERCommentsList"
}

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
