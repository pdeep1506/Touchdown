//
//  SectionView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-02.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: - Property
    @State var rotateClockWise: Bool
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90: -90 ))
            
            Spacer()
        } //: Vstack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockWise: false)
}
