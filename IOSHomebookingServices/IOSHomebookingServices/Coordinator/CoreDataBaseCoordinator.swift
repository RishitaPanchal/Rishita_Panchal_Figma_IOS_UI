//
//  CoreDataBaseCoordinator.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 15/06/22.
//

import Foundation
import UIKit

class CoreDataBaseCoordinator{
    
    var navigationController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
//    
//    func start() {
//        let vc = CRUDViewController.instantiateFromStoryBoard(from: .CoreDataBase)
//        vc.coordinator = self
//        navigationController?.pushViewController(vc, animated: true)
//    }
//    
//    func finish() {
//        navigationController?.popViewController(animated: true)
//    }
    
}
