//
//  SecondViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: Instance variable
    @IBOutlet weak var txtLabel: UITextField!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem?.tintColor = .white
        navigationItem.title = "SecondVC"
        configureBarItem()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ThirdViewController else {
            return
        }
        vc.delegate = self
        vc.recivedName = sender as? String ?? "Empty"
    }
    
    // MARK: IBAction
    @IBAction func goToThirdVc(_ sender: Any) {
        guard let thirdVc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else {
            return
        }
        self.present(thirdVc, animated: true, completion: nil)
    }
    
    @IBAction func pushThirdVc(_ sender: UIButton) {
        moveToThirdVC()
    }
    
    @IBAction func sendData(_ sender: UIButton) {
        performSegue(withIdentifier: "passDataFromSecToThird", sender: txtLabel.text)
    }
    
    
    // MARK: Methods
    private func configureBarItem() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(closeAllVc))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextVC))
    }
    
    func moveToThirdVC() {
        guard let thirdVc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else {
            return
        }
        self.navigationController?.pushViewController(thirdVc, animated: true)
    }
    
    // MARK: Action to bar button
    @objc fileprivate func closeAllVc() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc fileprivate func nextVC() {
        moveToThirdVC()
    }
    
}

// MARK: Extension which conforms Sendback data
extension SecondViewController: SendBackData {
    
    func passData(data: String) {
        txtLabel.text = data
    }
    
}
