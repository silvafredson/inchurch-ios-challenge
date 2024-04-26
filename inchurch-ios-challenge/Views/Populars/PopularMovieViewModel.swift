//
//  PopularMovieViewModel.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 25/04/24.
//

import Foundation

final class PopularMovieViewModel: ObservableObject {
    @Published var movies: [PopularMovies] = []   
    let service = Service()
    
    func loadingPopularMovies() {
        service.getPopularMovies { completion in
            switch completion {
            case .success(let movies):
                self.movies = movies
            case .failure(let error):
                print(error)
            }
        }
    }
}
