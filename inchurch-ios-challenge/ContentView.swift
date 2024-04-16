//
//  ContentView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 15/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MoviesView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorite", systemImage: "star.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
