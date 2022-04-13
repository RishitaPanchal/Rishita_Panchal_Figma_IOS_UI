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
   
    func showUsersComments(comments: [Comments])
    func showAlert(title: String, message: String)

}

class MVPPresenter {
    
    // MARK: Instance variable
    weak var delegate: UserDetailesDelegate?

    // MARK: API response function
    func fetchComments() {
        APiClient.shared.request(url: URL(string: "https://jsonplaceholder.typicode.com/comments"), expecting: [Comments].self) { [self] result in
            switch result {
                case .success(let comment):
                    DispatchQueue.main.async {
                        self.delegate?.showUsersComments(comments: comment)
                    }
                case .failure(_):
                    print("Error")
            }
        }
    }
    
    // MARK: Functions
    func setViewDelegate(delegate: UserDetailesDelegate) {
        self.delegate = delegate
    }
    
    func didTapUser(user: Comments) {
        delegate?.showAlert(title: "Message", message: "Selected user ID is : \(user.id)")
    }
    
}
