//
//  VCTwoCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//


import Foundation
import UIKit

class VCTwoCoordinator: Coordinator {
   
    // MARK: INstance variable
    var navigationController: UINavigationController?

    // MARK: Initializers
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        guard let secondVC = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewControllerByCoordinator") as? ViewControllerTwoByCoordinator else { return }
        secondVC.coordinator = self
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func startWithData(to data: [String], _ delegate: BackWardDataPassing) {
        guard let secondVC = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewControllerByCoordinator") as? ViewControllerTwoByCoordinator else { return }
        secondVC.coordinator = self
        secondVC.recievedItems = data
        secondVC.delegate = delegate
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func finish() {
        navigationController?.popViewController(animated: true)
    }

}
