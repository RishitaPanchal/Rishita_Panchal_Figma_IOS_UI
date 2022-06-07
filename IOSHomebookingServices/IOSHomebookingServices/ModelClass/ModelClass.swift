//
//  ModelClass.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 09/06/22.
//

import Foundation

// MARK: Login successfull Request
struct UserRequest: Codable {
    let email: String?
    let password: String?
}

// MARK: Login successful Response
struct UserResponse: Codable {
    let id: String?
    let token: String?
}
