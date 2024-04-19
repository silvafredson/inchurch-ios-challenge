//
//  RectangleView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 15/04/24.
//

import SwiftUI

struct RectangleView: View {
    
    @State private var movies: PopularMovies?
    
    var body: some View {
        VStack {
            
            AsyncImage(url: URL(string: movies?.posterPath ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Rectangle()
            }
            .frame(width: 180, height: 240)
            .cornerRadius(12)
            

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
