//
//  UserManager.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 14/04/22.
//

import Foundation

struct keys {
    static let isUserLogin = "isUserLogin"
}
class UserManager: NSObject {
    
    static let shared: UserManager = UserManager()
    
    var isUserLogin: Bool {
        get  {
            return UserDefaults.standard.bool(forKey: keys.isUserLogin)
        } set {
            UserDefaults.standard.setValue(isUserLogin, forKey: keys.isUserLogin)
            UserDefaults.standard.synchronize()  
        }
    }
}
