//
//  PopularMoviesView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 15/04/24.
//

import SwiftUI

struct PopularMoviesView: View {
    
    @ObservedObject private var viewModel = PopularMovieViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: -16), GridItem(.flexible())]) {
                ForEach(viewModel.movies) { movie in
                    MovieView(couverURL: movie.posterPathURL)
                }
            }
        }
    }
}

#Preview {
    PopularMoviesView()
}
