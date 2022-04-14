//
//  LoginViewModel.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation

class LoginViewModel: NSObject {
  
    var user: User?
    var email: String {return user?.email ?? "nill"}
    
    typealias authenticationCallback = (_ status: Bool, _ message: String) -> Void
    var loginCallBack: authenticationCallback?
  
    func authenticateUsreWith(_ email: String, _ password: String) {
        if (email.count == 0 && password.count == 0) {
            self.loginCallBack?(false,"Fields should not be empty!!")
        } else {
            verifyUserWith(email: email, password: password)
        }
    }
    
    func verifyUserWith(email: String, password: String) {
        if (email == "admin@123gmail.com" && password == "admin@123") {
            let user = User(email: email, password: password)
            self.loginCallBack?(true, "Login Succesfull \(user.email)")
        } else {
            self.loginCallBack?(false, "Enter valid credentials!!")
        }
    }
    
    func loginCompletionHandler(callBack: @escaping authenticationCallback) {
        self.loginCallBack = callBack
    }
    
}
