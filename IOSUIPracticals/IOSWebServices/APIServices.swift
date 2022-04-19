//
//  CodeAbstraction.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 29/03/22.
//

import Foundation
import Alamofire

class APIServices {
    
    // MARK: Instance variable
    static let shared = APIServices()
    var responseCode: Int?
    let baseUrl = "https://reqres.in/"
   
    // MARK: API calling operations
    enum APIUrls {
        case singleUser
        case listUsers
        case postData
        case putData
        case patchData
        case deleetData
    }
    
    // MARK: URLEncoding style
    enum UrlEncoding {
        
        static func urlEncoding(url: APIUrls) -> ParameterEncoding {
            switch url {
                case .singleUser, .listUsers, .postData, .putData, .patchData, .deleetData:
                    return URLEncoding.default
            }
        }
    
        // MARK: URL Endpoints
        static func evaluate(urls: APIUrls) -> String {
            switch urls {
                case .singleUser, .putData, .deleetData, .patchData:
                    return "api/users/"
                case .listUsers:
                    return "api/users?page=2"
                case .postData:
                    return "api/login"
            }
        }

        // MARK: HTTPMethodas
        static func urlMethod(url: APIUrls) -> HTTPMethod {
            switch url {
                case .singleUser:
                    return .get
                case .listUsers:
                    return .get
                case .postData:
                    return .post
                case .putData:
                    return .put
                case .patchData:
                    return .patch
                case .deleetData:
                    return .delete
            }
        }
    
    }

    // MARK: Alamofire request method
    func request<T: Decodable>(typeT: T.Type, apiUrl: APIUrls, param: Dictionary<String, Any>?, url: URL?, completion: @escaping (T?, Int) -> Void, error: @escaping () -> Void) {
        guard let url = url else { return }
        AF.request(url, method: UrlEncoding.urlMethod(url: apiUrl), parameters: param, encoding: UrlEncoding.urlEncoding(url: apiUrl), headers: nil, interceptor: nil, requestModifier: nil).response { [weak self] response in
            switch response.result {
                case .success(let data):
                    if let responseData = data {
                        do {
                            guard let jsonData = try JSONDecoder().decode(T?.self, from: responseData) else { return }
                            completion(jsonData, response.response?.statusCode ?? 0)
                            self?.responseCode = response.response?.statusCode ?? 0
                            print(response.response?.statusCode ?? 0)
                        } catch (let error) {
                            print("Error \(error)")
                        }
                    } else {
                        completion(nil, response.response?.statusCode ?? 0)
                        error()
                    }
                    break
                case .failure(let error):
                    print(error)
            }
      }
    }
    
}
