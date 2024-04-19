//
//  PopularMovies.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 18/04/24.
//

import Foundation

struct PopularMovies: Codable {
    let originalTitle: String
    let releaseDate: String
    let genderIds: [Int]
    let overview: String
    let posterPath: String
}
