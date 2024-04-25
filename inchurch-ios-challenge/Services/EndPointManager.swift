//
//  EndPointManager.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 25/04/24.
//

import Foundation

protocol EndpointManager {
    var path: String { get }
    var url: URL? { get }
}

extension EndpointManager {
    var url: URL? {
        guard var components = URLComponents(string: "https://api.themoviedb.org/3\(path)") else { return nil }
        
        components.queryItems = [
            URLQueryItem(name: "api_key", value: "991f5c960cf217154223d641609ef189")
        ]
        return components.url
    }
}
