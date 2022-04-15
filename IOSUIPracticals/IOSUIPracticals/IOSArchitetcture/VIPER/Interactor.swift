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
        if let url = URL(string: "https://reqres.in/api/users?delay=3") {
            let urlRequest = URLRequest(url: url)
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { data, urlResponse, error in
                if let error = error {
                    self.presenter?.interactorDidFetchComments(result:.failure(CustomErrors.failed))
                }
                        
                if let urlResponse = urlResponse {
                    print("URLResponse: \(urlResponse)")
                }
                        
                guard let responseData = data else {
                    return
                }
                        print("data:\(responseData)")
                do {
                    let decoder = JSONDecoder()
                    let userResponse = try decoder.decode([UserComments].self, from: responseData)
                    self.presenter?.interactorDidFetchComments(result: .success(userResponse))
                        } catch _ {
                    self.presenter?.interactorDidFetchComments(result: .failure(CustomErrors.failed))
                }
            }
            dataTask.resume()
        }
    }

}
