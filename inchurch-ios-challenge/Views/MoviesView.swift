//
//  MoviesView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 15/04/24.
//

import SwiftUI

struct MoviesView: View {
    
    @State private var movies: PopularMoviesResponse?
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: -16), GridItem(.flexible())]) {
                ForEach(0..<8) { rectangle in
                    RectangleView()
                }
            }
        }
    }
}

#Preview {
    MoviesView()
}
