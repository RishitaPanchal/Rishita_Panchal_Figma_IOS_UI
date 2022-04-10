//
//  VCOneCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import Foundation
import UIKit

class VCOneCoordinator: Coordinator {
    
    // MARK: Instance variable
    var navigationCOntroller: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        self.navigationCOntroller = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        guard let firstVc = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "FirstViewControllerByCoordinator") as? ViewControllerOneByCoordinator else { return }
        firstVc.coordinator = self
        navigationCOntroller?.pushViewController(firstVc, animated: true)
    }
    
    func finish() {
        navigationCOntroller?.popViewController(animated: true)
    }
    
    func goToThirdVC(to data: [String], _ delegate: BackWardDataPassing) {
        guard let navController = navigationCOntroller else { return }
        let secondVC = VCTwoCoordinator(navController)
        secondVC.startWithData(to: data, delegate)
    }
    
}
