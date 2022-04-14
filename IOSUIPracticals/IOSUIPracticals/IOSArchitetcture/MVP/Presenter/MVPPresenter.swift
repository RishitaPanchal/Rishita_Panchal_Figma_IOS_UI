//
//  MVPPresenter.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 13/04/22.
//

import Foundation
import UIKit

// MARK: MVP Protocol methods
protocol UserDetailesDelegate: AnyObject {
    var viewDelegate: ViewProtocol? { get set }
    func showUsersComments()
}

class MVPPresenter: UserDetailesDelegate {
    
    var viewDelegate: ViewProtocol?
    
    func showUsersComments() {
        APiClient.shared.fetchComments(url: "https://jsonplaceholder.typicode.com/comments") { data in
            DispatchQueue.main.async {
                self.viewDelegate?.success(comments: data)
            }
        }
    }
    
}
