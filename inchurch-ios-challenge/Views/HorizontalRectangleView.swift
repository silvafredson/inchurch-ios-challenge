//
//  HorizontalRectangleView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 18/04/24.
//

import SwiftUI

struct HorizontalRectangleView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 180)
                .cornerRadius(12)
                .padding(8)
                .foregroundStyle(.tertiary)
            
            HStack {
                VStack(alignment: .leading) {
                    Rectangle()
                        .cornerRadius(12)
                        .foregroundStyle(.cyan)
                }
                .frame(maxWidth: 120, maxHeight: 180)
                
                HStack {
                    Text("Nome de Filme")
                        .foregroundColor(.black)
                    Spacer()
                    Text("22/11/92")
                        .foregroundColor(.black)
                }
                .frame(width: 200)
            }
        }
        //.frame(maxWidth: .infinity, maxHeight: 180)
        //.padding(.horizontal)
    }
}

#Preview {
    HorizontalRectangleView()
}
