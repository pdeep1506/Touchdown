//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-08.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Property
    
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // Header
            HeaderDetailView()
                .padding(.horizontal)            // Detail top part
            TopPartDetailView()
                .padding(.horizontal)
            // Detail bottom part
            VStack(alignment: .center, spacing: 0, content: {
                // Ratin g + Sizes
                
                // Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) //: Scrolol
                
                // quantity + Favorite
                // Add to cart
              Spacer()
            }) //: VSTack
            .padding(.horizontal)
            .background(Color.white)
            
            
            
            Spacer()
        }) // VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
                .ignoresSafeArea(.all, edges: .all)
        )
        
    }
}

#Preview {
    ProductDetailView()
}
