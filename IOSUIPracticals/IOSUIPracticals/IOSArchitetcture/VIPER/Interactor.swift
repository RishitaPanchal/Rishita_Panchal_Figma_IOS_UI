//
//  Interactor.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import Foundation
import UIKit

class Interactor: VInteractorProtocol {
    
    // MARK: Instance variable
    var presenter: VPresenterProtocol?
    
    // MARK: Protocol method
    func getComments() {
        APiClient.shared.fetchCommentsForVIPER(url: "https://jsonplaceholder.typicode.com/comments") { data in
            self.presenter?.interactorDidFetchComments(result: .success(data))
        }
    }
    
}
