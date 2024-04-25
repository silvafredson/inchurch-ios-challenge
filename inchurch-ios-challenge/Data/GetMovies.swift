//
//  GetMovies.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 16/04/24.
//

import Foundation

func getMovies() async throws -> PopularMoviesResponse {
    let endpoint = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=991f5c960cf217154223d641609ef189"

    // Objeto URL da String acima
    guard let url = URL(string: endpoint) else { throw MoviesError.invalidURL }
    
    // Obter os dados da url acima (isso é um GET request, está apenas baixando dados) que retorna uma tupla de dados e resposta
    let (data, response) = try await URLSession.shared.data(from: url)
    
    // Se retornar 200, significa que está tudo bem, se não vai passar pelos erros
    guard let  response = response as? HTTPURLResponse, response.statusCode == 200 else {
        throw MoviesError.invalidResponse
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(PopularMoviesResponse.self, from: data)
    } catch {
        throw MoviesError.invalidData
    }
}


//func getMovies() async throws -> PopularMovies {
//    let url = URL(string: "https://api.themoviedb.org/3/trending/movie/day")!
//    var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
//    let queryItems: [URLQueryItem] = [
//      URLQueryItem(name: "language", value: "en-US"),
//    ]
//    components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems
//
//    var request = URLRequest(url: components.url!)
//    request.httpMethod = "GET"
//    request.timeoutInterval = 10
//    request.allHTTPHeaderFields = [
//      "accept": "application/json",
//      "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5OTFmNWM5NjBjZjIxNzE1NDIyM2Q2NDE2MDllZjE4OSIsInN1YiI6IjY2MWY5OTBiNmQ5ZmU4MDE2MzYwODZlMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.AYmiyHLd_Fahb9gunD9UTqjstzfRM7dtti8AMWKGsRI"
//    ]
//
//    let (data, response) = try await URLSession.shared.data(for: request)
//    
//    guard let  response = response as? HTTPURLResponse, response.statusCode == 200 else {
//            throw MoviesError.invalidResponse
//        }
//    
//        do {
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            return try decoder.decode(PopularMovies.self, from: data)
//        } catch {
//            throw MoviesError.invalidData
//        }
//    print(String(decoding: data, as: UTF8.self))
//}


