//
//  DataClass.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 30/03/22.
//

import Foundation

// MARK: Login successfull Request
struct UserRequest: Codable {
    let email: String?
    let password: String?
}

// MARK: Login successful Response
struct UserResponse: Codable {
    let token: String?
}

// MARK: - List users Main dataclass
struct MainData: Codable {
    
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support

    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data, support
    }
    
}

// MARK: - Signle user data class
struct SingleUser: Codable {
    let data: User
    let support: Support
}

// MARK: - Data
struct User: Codable {
    
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
    
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}

// MARK: Delete
struct DeleteUser: Codable {}

// MARK: PUT and Patch dataclass
struct UploadData: Codable {
    let name: String
    let job: String
}
       

