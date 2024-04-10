//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-02.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - PROPERTY
    
    let category: Category
    
    // MARK: - BODY
    
    var body: some View {
        Button(action:{
            
        }, label: {
            HStack(alignment:.center, spacing: 6) {
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //: HSTack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        })
    }
}

#Preview {
    CategoryItemView(category: categories[0])
}
