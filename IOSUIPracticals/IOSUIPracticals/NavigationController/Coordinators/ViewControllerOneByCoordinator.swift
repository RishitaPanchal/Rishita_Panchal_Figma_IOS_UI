//
//  ViewControllerOneByCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import UIKit

class ViewControllerOneByCoordinator: UIViewController {

    // MARK: IBOutlet
    @IBOutlet weak var msgToSend: UITextField!
    @IBOutlet weak var dataFromPreviousVC: UILabel!
    @IBOutlet weak var showData: UILabel!

    // MARK: Instance variable
    var data = [String]()
    
    // MARK: Instance variable
    var coordinator: VCOneCoordinator?
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: IBActions
    @IBAction func goToHomeVC(_ sender: UIButton) {
        coordinator?.finish()
    }
    
    @IBAction func goToNextVC(_ sender: UIButton) {
        data.insert(msgToSend.text!, at: 0)
        coordinator?.goToThirdVC(to: data, self)
    }
    
}

// MARK: Extension BackWardDataPassing
extension ViewControllerOneByCoordinator: BackWardDataPassing {

    func passData(data: String) {
        dataFromPreviousVC.text = data
    }
    
}
