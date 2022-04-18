//
//  ThirdViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import UIKit

// MARK: Protocol for backward data passing
protocol SendBackData: AnyObject {
    func passData(data: String)
}

class ThirdViewController: UIViewController {
   
    // MARK: IBOutlets
    @IBOutlet weak var receivedData: UITextField!
    
    // MARK: Instance variable
    var recivedName: String?
    weak var delegate: SendBackData?
    
    // MARK: Overridden methods
    override func viewDidLoad() {
        super.viewDidLoad()
        receivedData.text = recivedName
        navigationItem.title = "Third VC"
        configureBarItem()
    }
    
    // MARK: IBActions
    @IBAction func goToFourthVc(_ sender: Any) {
        guard let forthVC = storyboard?.instantiateViewController(withIdentifier: "ForthViewController") as? ForthViewController else { return }
        self.present(forthVC, animated: true, completion: nil)
    }
    
    @IBAction func unwindToThird(_ sender: UIStoryboardSegue) {}
    
    @IBAction func pushForthVc(_ sender: UIButton) {
        moveToForthVC()
    }
    
    @IBAction func sendBackData(_ sender: UIButton) {
        delegate?.passData(data: receivedData.text ?? "Empty")
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: Method to set bar button
    private func configureBarItem() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(backVc))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextVC))
    }
    
    func moveToForthVC() {
        guard let forthVC = storyboard?.instantiateViewController(withIdentifier: "ForthViewController") as? ForthViewController else { return }
        self.navigationController?.pushViewController(forthVC, animated: true)
    }
    
    // MARK: Action for bar buttons
    @objc fileprivate func backVc() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc fileprivate func nextVC() {
        moveToForthVC()
    }
    
}
