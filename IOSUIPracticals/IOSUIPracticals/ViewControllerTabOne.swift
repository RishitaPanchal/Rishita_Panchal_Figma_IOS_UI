//
//  ViewControllerTabOne.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 09/03/22.
//

import UIKit

class ViewControllerTabOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController 1: viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewCOntroller 1 : ViewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController 1 : ViewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController 1 : viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController 1 : viewDidDisappear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("ViewController 1 : viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("ViewController 1 : viewDidLayoutSubviews")
    }

}
