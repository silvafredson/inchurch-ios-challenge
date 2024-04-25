//
//  SearchBarView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 24/04/24.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationLink("") {
            Text("Searching for \(searchText)")
                .navigationTitle("Searchable")
        }
        .searchable(text: $searchText, prompt: "Search for movies")
    }
}

#Preview {
    SearchBarView()
}
