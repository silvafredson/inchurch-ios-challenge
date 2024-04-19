//
//  FavoritesView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 15/04/24.
//

import SwiftUI

struct FavoritesView: View {
    
    let columns = [GridItem(.adaptive(minimum: .infinity, maximum: .infinity))]
    
    var body: some View {
        ScrollView {
            ScrollView {
                 LazyVGrid(columns: columns) {
                     ForEach(0..<8, id: \.self) { rectangle in
                         HorizontalRectangleView()
                     }
                 }
             }
        }
    }
}

#Preview {
    FavoritesView()
}
