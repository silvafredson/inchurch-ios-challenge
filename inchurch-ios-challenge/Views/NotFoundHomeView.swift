//
//  NotFoundHomeView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 17/04/24.
//

import SwiftUI

struct NotFoundHomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 80))
            Text("No movies found with that name.")
        }
    }
}

#Preview {
    NotFoundHomeView()
}
