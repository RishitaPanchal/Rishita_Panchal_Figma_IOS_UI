//
//  APICalling.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 08/06/22.
//

import Foundation


class APICalling {
    
    // MARK: - Instance variable
    static let shared = APICalling()
   
    // MARK: - Functions
    func loginVerification(parama: UserRequest, result: @escaping (String) ->  Void) {
        let endPoint = BaseApiClient.getEndPoints(url: .singleUser)
        guard let url = URL(string:  "\(BaseApiClient.shared.baseUrl + endPoint)") else { return }
        let param  = ["email": "eve.holt@reqres.in",
                      "password": "cityslicka"]
        BaseApiClient.shared.request(model: UserResponse.self, url: url, apiUrls: .singleUser, parameters: param) { response, statusCode in
            guard let responseData = response else { return }
            result(responseData.token ?? "nil")
        } onFailure: { error in
            result("Something went wrong!!")
        }
    }
    
}
