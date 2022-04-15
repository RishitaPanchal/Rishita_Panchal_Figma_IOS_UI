//
//  Router.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import Foundation
import UIKit

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    static func start(vc: UIViewController)
}


class Router: AnyRouter {
   
    static func start(vc: UIViewController) {
        guard let vc = vc as? VIPERView else { return }
        let router = Router()
        var interactor: AnyInteractor = Interactor()
        var presenter: AnyPresenter = Presenter(interactor)
        vc.presenter = presenter
        interactor.presenter = presenter
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = vc
    }
    
    
}
