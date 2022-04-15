//
//  APIClient.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 13/04/22.
//

import Foundation
import UIKit

class APiClient {
    
    static let shared = APiClient()
    
    private init() { }
    
    enum CustomError: Error {
        case invalidUrl
        case invalidData
    }
    
    func request<T: Codable>(url: URL?, expecting: T.Type, completion: @escaping (Result<T,Error>) -> Void) {
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
    
    func fetchComments(url: String, completion: @escaping ([Comments]) -> Void) {
        APiClient.shared.request(url: URL(string: url), expecting: [Comments].self) { result in
            switch result {
                case .success(let users):
                    DispatchQueue.main.async {
                        completion(users)
                    }
                case .failure(_):
                    print("Error")
            }
        }
    }
   
}
