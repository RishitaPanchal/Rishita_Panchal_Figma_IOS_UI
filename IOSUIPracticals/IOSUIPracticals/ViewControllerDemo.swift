//
//  ViewControllerDemo.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 25/02/22.
//

import UIKit

class ViewControllerDemo: UIViewController {

    @IBOutlet weak var btnClick: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
                
        btnClick.addTarget(self, action: #selector(clickMe), for: .allTouchEvents)
        
    }
    @objc func clickMe() {
        btnClick.backgroundColor = .blue
    }

}
