//
//  FourthViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import UIKit

class ForthViewController: UIViewController {

    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBarItem()
    }
  
    // MARK: IBActions
    @IBAction func DismisFifthVC(_ sender: UIButton) {
        self.dismiss(animated:true, completion: nil)
    }
    
    @IBAction func dismissTillRootVC(_ sender: UIButton) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func popVc(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popToRootVc(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func popTillSecondVC(_ sender: Any) {
        let secondVc = self.navigationController?.viewControllers[1]
        if((secondVc?.isKind(of: SecondViewController.classForCoder())) != nil) {
            self.navigationController?.popToViewController(secondVc!, animated: true)
        } else {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
    
    // MARK: BarButtons
    private func configureBarItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeAllVc))
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(backVc))
    }
    
    // MARK: Action for bar buttons
    @objc fileprivate func backVc() {
        popVc()
    }
    
    @objc fileprivate func closeAllVc() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    // MARK: Method
    func popVc() {
        self.navigationController?.popViewController(animated: true)
    }
   
}
