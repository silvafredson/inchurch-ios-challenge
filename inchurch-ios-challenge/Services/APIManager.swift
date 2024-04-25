//
//  APIManager.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 25/04/24.
//

import Foundation

protocol APIManager {
    func request<T: Codable>(_ endpoint: EndpointManager, _ page: Int, completion: @escaping (Result <T, MoviesError>) -> Void)
}

final class API: APIManager {
    
    private let urlSession: URLSession
    
    init (urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }
    
    func request<T>(_ endpoint: EndpointManager, _ page: Int, completion: @escaping (Result<T, MoviesError>) -> Void) where T : Decodable, T : Encodable {
        
        if let url = endpoint.url {
            
            urlSession.dataTask(with: url) { data, response, error in
                
                do {
                    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                        throw MoviesError.invalidResponse
                    }
                    
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    
                    let model = try decoder.decode(T.self, from: data!)
                    completion(.success(model))
                } catch {
                    completion(.failure(MoviesError.invalidData))
                }
            }
            
        } else {
            completion(.failure(MoviesError.invalidURL))
        }
    }
    
}



