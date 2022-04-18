//
//  Presenter.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import Foundation


class Presenter: VPresenterProtocol {
    
    // MARK: Instance variable (Refferences)
    var router: VRouterProtocol?
    var interactor: VInteractorProtocol?
    var view: VViewProtocol?
    
    // MARK: Initializer
    init(_ interactor: VInteractorProtocol) {
        self.interactor = interactor
        self.interactor?.getComments()
    }
    
    // MARK: Protocol method
    func interactorDidFetchComments(result: Result<[UserComments], Error>) {
        switch result {
            case .success(let users):
                view?.update(users)
            case .failure(_):
                view?.update("something went wrong!!")
        }
    }
    
}
