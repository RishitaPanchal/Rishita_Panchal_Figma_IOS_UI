//
//  FirstViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/04/22.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: INStance variable
    var coordinator: HomeVCCoordinator?
    
    @IBOutlet weak var scrollView: UIScrollView!
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView?.showsVerticalScrollIndicator = false
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        if let naController = self.navigationController{
            coordinator = HomeVCCoordinator(naController)
        }
        configureBarItem()
    }
    
    // MARK: IBACtion
    @IBAction func goToSecondVc(_ sender: UIButton) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        secondVC.modalTransitionStyle = .flipHorizontal
        secondVC.modalPresentationStyle = .formSheet
        self.present(secondVC, animated: true, completion: nil)
    }
    
    @IBAction func goToVC1(_ sender: Any) {
        coordinator?.goToSecond()
    }
    
    @IBAction func pushSecondVc(_ sender: UIButton) {
       pushSecondVc()
    }

    // MARK: Method
    func pushSecondVc() {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    private func configureBarItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextVC))
    }
    
    // MARK: Action for bar button
    @objc fileprivate func nextVC() {
       pushSecondVc()
    }

}
