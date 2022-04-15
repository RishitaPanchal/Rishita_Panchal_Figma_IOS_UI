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
    var entry: EntryPoint? { get }
    static func start() -> AnyRouter
}


class Router: AnyRouter {
    
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {

        let router = Router()
      /*  var view: AnyView = VIPERView()
       // var presenter: AnyPresenter = Presenter()
        var interactor: AnyInteractor = Interactor()
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = view
        
        router.entry = view as? EntryPoint*/
        return router
    }
    
    
}
