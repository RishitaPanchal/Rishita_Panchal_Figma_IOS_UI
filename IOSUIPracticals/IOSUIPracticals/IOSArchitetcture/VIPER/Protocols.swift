//
//  Protocols.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import Foundation
import UIKit

// MARK: View Protocol
protocol VViewProtocol {
    
    var presenter: VPresenterProtocol? { get set }
    func update(_ comments: [UserComments])
    func update(_ error: String)

}

// MARK: Interactor protocol
protocol VInteractorProtocol {

    var presenter: VPresenterProtocol? { get set }
    func getComments()

}

// MARK: Presenter protocol
protocol VPresenterProtocol {

    var router: VRouterProtocol? { get set }
    var interactor: VInteractorProtocol? { get set }
    var view: VViewProtocol? { get set }
    func interactorDidFetchComments(result: Result<[UserComments], Error>)

}

// MARK: Router Protocol
protocol VRouterProtocol {
    func start(navigationConroller navigationController: UINavigationController)
}
