//
//  ItemsModel.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 13/04/22.
//

import Foundation
import UIKit

// MARK: - Data class for MVP, MVC, MVVM
struct Comments: Codable {
    
    let postID, id: Int
    let name, email, body: String

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
    
}

// MARK: MVVM Login Data class
struct User {
    var email: String
    var password: String
}

