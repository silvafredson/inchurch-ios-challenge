//
//  PopularMovies.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 18/04/24.
//

import Foundation

struct PopularMovies: Codable, Identifiable {
    let originalTitle: String
    let releaseDate: String
    let genreIds: [Int]
    let overview: String
    let posterPath: String
    let id: Int
    var posterPathURL: URL? {
        URL(string: "https://image.tmdb.org/t/p/w500\(posterPath)")
    }
}

struct PopularMoviesResponse: Codable {
    let results: [PopularMovies]
}
