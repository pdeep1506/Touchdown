//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-08.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Property
    
    // MARK: - Body
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6 ,content: {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
               
        }) //: VStack
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
}
