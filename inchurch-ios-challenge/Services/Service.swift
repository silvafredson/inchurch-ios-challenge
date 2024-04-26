//
//  Service.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 26/04/24.
//

import Foundation

final class Service {
    let api: APIManager
    
    init(api: APIManager = API()) {
        self.api = api
    }
    
    func getPopularMovies(completion: @escaping (Result<[PopularMovies], MoviesError>) -> Void) {
        api.request(EndPoint(path: "/movie/popular")) { (result: Result<PopularMoviesResponse, MoviesError>) in
            completion(result.map{ $0.results })
        }
    }
}
