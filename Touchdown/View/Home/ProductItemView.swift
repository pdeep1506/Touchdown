//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-08.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - Property
    let prodct: Product
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6 , content: {
            // Photo
            ZStack{
                Image(prodct.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: Zstack
            .background(Color(red: prodct.red, green: prodct.green, blue: prodct.blue))
            
            .cornerRadius(12)
            
            // Name
            
            Text(prodct.name)
                .font(.title3)
                .fontWeight(.black)
            
            
            
            // Price
            Text(prodct.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }) //: Vstack
    }
}

#Preview {
    ProductItemView(prodct: products[0])
}
