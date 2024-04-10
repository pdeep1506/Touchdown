//
//  TitleView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-08.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - Properties
    var title: String
    // MARK: - Body
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
        } //: Hstack
        .padding(.horizontal)
        .padding(.top,25)
        .padding(.bottom,10)
    }
}

#Preview {
    TitleView(title: "Helmate")
}
