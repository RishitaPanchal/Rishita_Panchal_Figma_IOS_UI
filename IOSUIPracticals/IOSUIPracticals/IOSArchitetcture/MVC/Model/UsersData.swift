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


class APiClient {
    
    static let shared = APiClient()
    
    private init() { }
    
    enum CustomError: Error {
        case invalidUrl
        case invalidData
    }
    
    func request<T:Codable>(url: URL?, expecting: T.Type, completion: @escaping (Result<T,Error>) -> Void) {
        guard let url = url else {
            completion(.failure(CustomError.invalidUrl))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                if let error = error {
                    completion(.failure(error))
                } else {
                    completion(.failure(CustomError.invalidData))
                }
                return
            }
            do {
                let result = try JSONDecoder().decode(expecting, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
}
