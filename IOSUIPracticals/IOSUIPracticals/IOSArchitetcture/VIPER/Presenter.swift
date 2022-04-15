//
//  Presenter.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import Foundation


protocol AnyPresenter {

    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }

    func interactorDidFetchComments(result: Result<[UserComments], Error>)

}

class Presenter: AnyPresenter {
    
    var router: AnyRouter?
    var interactor: AnyInteractor?
    var view: AnyView?
    
    init(_ interactor: AnyInteractor) {
        self.interactor = interactor
        self.interactor?.getComments()
    }
    
    func interactorDidFetchComments(result: Result<[UserComments], Error>) {
        switch result {
        case .success(let users):
            view?.update(users)
        case .failure(_):
            view?.update("something went wrong!!")
        }
    }
    
}
