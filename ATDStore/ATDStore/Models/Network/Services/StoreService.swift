//
//  StoreAPI.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

import Foundation

class StoreService {
    
    struct StoreAPI {
        static let scheme = "https"
        static let host = "amazon-fake-api.herokuapp.com"
        static let path = "/v1"
        static let apikey = "4c6275f3-3c21-49fa-8928-ba8c5c935b3a"
    }
    
    func makeProductFindRequest(byTitle title: String) -> URLRequest {
        var components = URLComponents()
        components.scheme = StoreAPI.scheme
        components.host = StoreAPI.host
        components.path = StoreAPI.path + "/products/find"
        components.queryItems = [
            URLQueryItem(name: "title", value: title)
        ]
        var request = URLRequest(url: components.url!)
        request.httpMethod = "POST"
        request.setValue(StoreAPI.apikey, forHTTPHeaderField: "API_KEY")
        
        return request
    }
    
    func makeProductDetailsRequest(byId id: String) -> URLRequest {
        var components = URLComponents()
        components.scheme = StoreAPI.scheme
        components.host = StoreAPI.host
        components.path = "/products/get"
        components.queryItems = [
            URLQueryItem(name: "id", value: id)
        ]
        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        request.setValue(StoreAPI.apikey, forHTTPHeaderField: "API_KEY")
        
        return request
    }
}
