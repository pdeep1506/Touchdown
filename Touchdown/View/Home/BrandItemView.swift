//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-08.
//

import SwiftUI

struct BrandItemView: View {
    
    // MARK: - Property
    let brand: Brand
    
    // MARK: - Body
    
    
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

#Preview {
    BrandItemView(brand: brands[0])
}
