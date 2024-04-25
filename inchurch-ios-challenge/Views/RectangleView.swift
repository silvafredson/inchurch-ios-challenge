//
//  RectangleView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 15/04/24.
//

import SwiftUI

struct RectangleView: View {
    
    @State private var movies: PopularMoviesResponse?
    //let baseURL = "https://image.tmdb.org/t/p/w500"

    
    var body: some View {
        VStack {
            if let movie = movies?.results.first { // Assuming you only want to display the first movie
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(movie.posterPath)")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Rectangle()
                }
                .frame(width: 180, height: 240)
                .cornerRadius(12)
            } else {
                LoadingView() // Placeholder view while movies are being loaded
            }
        }
        //.padding(8)
        .task {
            do {
                movies = try await getMovies()
            } catch MoviesError.invalidURL {
                print("Invalid URL")
            }
            catch MoviesError.invalidData {
                print("Invalid Data")
            } catch {
                print("unexpected error")
            }
        }
    }

}


#Preview {
    RectangleView()
}

