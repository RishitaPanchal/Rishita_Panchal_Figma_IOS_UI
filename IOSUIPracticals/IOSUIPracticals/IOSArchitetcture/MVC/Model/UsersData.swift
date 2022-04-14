//
//  ItemsModel.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 13/04/22.
//

import Foundation
import UIKit

// MARK: - WelcomeElement
struct Comments: Codable {
    
    let postID, id: Int
    let name, email, body: String

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
    
}

struct Comments2: Codable {
    
    let email, body: String

    enum CodingKeys: String, CodingKey {
        case email, body
    }
    
}

