//
//  LoginViewModel.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 07/06/22.
//

import Foundation

class LoginViewModel: BaseViewModel {
        
    // MARK: Instance variables
    typealias authenticationCallback = (_ status: Bool) -> Void?
    var loginCallback: authenticationCallback?
    var parameter = UserRequest.init(email: "eve.holt@reqres.in", password: "cityslicka")
    
    func validateUser(_ email: String, _ password: String) {
        (email.isEmpty  || password.isEmpty) ? self.loginCallback?(false) : loginVerification(parama: parameter)
    }
  
    func loginVerification(parama: UserRequest) {
        guard let url = URL(string:  "\(BaseApiClient.shared.baseUrl + BaseApiClient.getEndPoints(url: .singleUser))") else { return }
        let param  = ["email": parama.email ?? "nil", "password": parama.password ?? "nil"]
        isLoading.value = true
        BaseApiClient.shared.request(model: UserResponse.self, url: url, apiUrls: .singleUser, parameters: param) { [weak self] response, statusCode in
            guard let responseData = response else {
                self?.onFailure.value = R.string.localizable.error()
                self?.isLoading.value = false
                self?.loginCallback?(false)
                return
            }
            self?.onSuccedd.value = responseData.token
            self?.loginCallback?(true)
            self?.isLoading.value = false
        } onFailure: { [weak self] error in
            self?.loginCallback?(false)
            self?.onFailure.value = error
            self?.isLoading.value = false
        }
    }
    
    func loginCompletionHandler(callback: @escaping authenticationCallback) {
        self.loginCallback = callback
    }
    
}
