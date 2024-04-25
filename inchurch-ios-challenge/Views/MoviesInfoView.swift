//
//  MoviesInfoView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 17/04/24.
//

import SwiftUI

struct MoviesInfoView: View {
    
    @State private var movies: PopularMovies?
    
    var body: some View {
        VStack {

            Image(systemName: "movieclapper")
                .resizable()
                .scaledToFit()
            
            Text(movies?.releaseDate ?? "")
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .leading])
                .foregroundColor(.gray)
            
            Text("Drama and Music")
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .leading, .bottom])
                .foregroundColor(.gray)
            
            Text(movies?.overview ?? "")
                .padding()
        }
    }
}

#Preview {
    MoviesInfoView()
}
