//
//  ErroView.swift
//  inchurch-ios-challenge
//
//  Created by Fredson Silva on 17/04/24.
//

import SwiftUI

struct ErroView: View {
    var body: some View {
        VStack {
            Text("🙁")
                .font(.system(size: 120))
            Text("An error has occurred. Tap here to try again")
        }
    }
}

#Preview {
    ErroView()
}
