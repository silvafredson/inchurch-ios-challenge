//
//  GetMovies.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 16/04/24.
//

import Foundation

func getMovies() async throws -> PopularMovies {
    let endpoint = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1"
    
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
        return try decoder.decode(PopularMovies.self, from: data)
    } catch {
        throw MoviesError.invalidData
    }
}
