//
//  NoFavoriteView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 18/04/24.
//

import SwiftUI

struct NoFavoriteView: View {
    var body: some View {
        VStack {
            Text("😅")
                .font(.system(size: 120))
            Text("You do not have any favorites yet.")
                .padding(.horizontal)
        }
    }
}

#Preview {
    NoFavoriteView()
}
