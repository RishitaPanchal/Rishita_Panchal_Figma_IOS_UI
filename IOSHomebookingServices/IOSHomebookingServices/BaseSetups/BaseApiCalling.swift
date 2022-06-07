//
//  BaseApiCalling.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 08/06/22.
//

import Foundation
import Alamofire

class BaseApiClient {
    
    // MARK: - Instance variables
    static let shared = BaseApiClient()
    let baseUrl = "https://reqres.in/api/"
    
    // MARK: - Initializer
    private init() {}
    
    // MARK: - Enumeration
    enum APIUrls {
        case singleUser
        case listUser
    }
    
    // MARK: - Functions
    static func setUrlHttpMethod(url: APIUrls) -> HTTPMethod {
        switch url {
            case .singleUser:
                return .post
            case .listUser:
                return .get
        }
    }
    
    static func urlEncoding(url: APIUrls) -> ParameterEncoding {
        switch url {
        case .singleUser, .listUser:
            return URLEncoding.default
        }
    }
    
    static func getEndPoints(url: APIUrls) -> String {
        switch url {
            case .singleUser:
                return "login"
            case .listUser:
                return "api/users?page=2"
        }
    }
    
    // MARK: - Generic function
    func request<T: Codable>(model: T.Type, url: URL?, apiUrls: APIUrls, parameters: [String:Any], result: @escaping (T?, Int) -> Void, onFailure: @escaping (String) -> Void) {
        guard let url = url else { return }
        print(parameters)
        AF.request(url, method: BaseApiClient.setUrlHttpMethod(url: apiUrls), parameters: parameters, encoding: BaseApiClient.urlEncoding(url: apiUrls), headers: nil, interceptor: nil, requestModifier: nil).response { [weak self] response in
            switch response.result {
            case .success(let data):
                do {
                    if let responsedata = data {
                        if(response.response?.statusCode == 200) {
                            do {
                                guard let jsonData = try JSONDecoder().decode(T?.self, from: responsedata) else { return }
                                result(jsonData, response.response?.statusCode ?? 0)
                            } catch (_) {
                                result(nil, response.response?.statusCode ?? 0)
                            }
                        } else {
                            result(nil, response.response?.statusCode ?? 0)
                            print(response.response?.statusCode ?? 0)
                        }
                    } else {
                        result(nil, response.response?.statusCode ?? 0)
                        onFailure("Oops!! Something went wrong...")
                    }
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
