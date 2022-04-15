//
//  CommentsVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation
import UIKit

class CommentsVCCoordinator: Coordinator {
    
    // MARK: Instance variable
    var CommentsNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        CommentsNavController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        if let loginVC = UIStoryboard(name: "MVVMUsingCoordinator", bundle: nil).instantiateViewController(withIdentifier: "ListCommentsViewController") as? MVVMshowCommentsViewController {
            CommentsNavController?.pushViewController(loginVC, animated: true)
        }
    }
    
    func finish() {
        CommentsNavController?.popViewController(animated: true)
    }
    
}
