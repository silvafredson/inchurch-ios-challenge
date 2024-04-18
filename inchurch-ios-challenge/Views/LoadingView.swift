//
//  LoadingView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 17/04/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                ProgressView()
                    .scaleEffect(2)
                    .padding()
                Text("Loading Movies...")
            }
        }
    }
}

#Preview {
    LoadingView()
}
