//
//  BaseViewController.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 07/06/22.
//

import UIKit

class BaseViewController<T, VM>: UIViewController, CoordinatorBoard {

    // MARK: - Instance variables
    var coordinator: T?
    var viewModel: VM = ViewModelInstanceCreater.createInstance(VM.self) as! VM
    
    // MARK: - Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyBoard(viewController: self)
    }
    
    // MARK: - Functions
    func dismissKeyBoard(viewController: UIViewController) {
        let tap = UITapGestureRecognizer(target: self, action: #selector(viewController.handleTap))
        view.addGestureRecognizer(tap)
    }
    
}

// MARK: - ViewModel Instance creater
class ViewModelInstanceCreater {
    
    static func createInstance<T> (_ className: T) -> Any {
        switch(className) {
            case is LoginViewModel:
                return LoginViewModel()
            default:
                return LoginViewModel()
        }
    }
    
}


