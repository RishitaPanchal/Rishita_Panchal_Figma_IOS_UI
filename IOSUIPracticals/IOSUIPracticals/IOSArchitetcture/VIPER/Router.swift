//
//  Router.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import Foundation
import UIKit

class Router: VRouterProtocol {
   
    // MARK: Protocol method
    func start(navigationConroller navigationController: UINavigationController) {
        let storyboard = UIStoryboard(name: "VIPERCommentsList", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VIPERCommentsList") as! VIPERView
        let router = Router()
        var interactor: VInteractorProtocol = Interactor()
        var presenter: VPresenterProtocol = Presenter(interactor)
        
        vc.presenter = presenter
        interactor.presenter = presenter
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = vc
        navigationController.pushViewController(vc, animated: true)
    }
    
}
