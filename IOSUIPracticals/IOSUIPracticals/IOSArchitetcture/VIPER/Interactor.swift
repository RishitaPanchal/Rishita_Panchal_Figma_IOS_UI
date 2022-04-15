//
//  Interactor.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import Foundation
import UIKit

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    func getComments()
}

class Interactor: AnyInteractor {
    
    var presenter: AnyPresenter?
    
    func getComments() {
        APiClient.shared.fetchComments2(url: "https://jsonplaceholder.typicode.com/comments") { data in
            self.presenter?.interactorDidFetchComments(result: .success(data))
        }
    }
    
}
