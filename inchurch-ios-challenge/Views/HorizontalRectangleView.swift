//
//  HorizontalRectangleView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 18/04/24.
//

import SwiftUI

struct HorizontalRectangleView: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 180)
            .cornerRadius(12)
            .padding(8)
    }
}

#Preview {
    HorizontalRectangleView()
}
