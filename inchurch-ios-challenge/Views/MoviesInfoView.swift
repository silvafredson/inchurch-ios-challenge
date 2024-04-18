//
//  MoviesInfoView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 17/04/24.
//

import SwiftUI

struct MoviesInfoView: View {
    var body: some View {
        VStack {

            Image(systemName: "movieclapper")
                .resizable()
                .scaledToFit()
            
            Text("Realase date: 04/06/2024")
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .leading])
                .foregroundColor(.gray)
            
            Text("Drama and Music")
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .leading, .bottom])
                .foregroundColor(.gray)
            
            Text("Seasoned musician Jackson Maine discovers-and falls in love with-struggling artist Ally. She has just about given up on her dream to make it big as a singer-until Jack coaxes her into the spotlight. But even as Ally's career takes off, the personal side of their relationship is breaking down, as Jack fights an ongoing battle with his own internal demons.")
                .padding()
        }
    }
}

#Preview {
    MoviesInfoView()
}
