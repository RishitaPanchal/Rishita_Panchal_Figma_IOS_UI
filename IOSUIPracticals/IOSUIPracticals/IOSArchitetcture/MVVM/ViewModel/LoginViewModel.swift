//
//  LoginViewModel.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation

class LoginViewModel {
    
    // MARK: Typealias for closure
    typealias authenticationCallback = (_ status: Bool, _ message: String) -> Void
  
    // MARK: Instance variables
    var user: User?
    var email: String {return user?.email ?? "nill"}
    var commentsList = Dynamic<[Comments]?>(nil)
    var loginCallBack: authenticationCallback?
  
    // MARK: Functions
    func authenticateUsreWith(_ email: String, _ password: String) {
        (email.isEmpty || password.isEmpty) ? self.loginCallBack?(false, "Fields should not be empty!!") :             verifyUserWith(email: email, password: password)
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
    
    func showUsersComments() {
        APiClient.shared.fetchComments(url: "https://jsonplaceholder.typicode.com/comments") { data in
            self.commentsList.value = data
            self.commentsList.fire()
        }
    }

}
