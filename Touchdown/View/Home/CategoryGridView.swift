//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-02.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Property
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                
                ) {
                    ForEach(categories){
                        category in
                        CategoryItemView(category: category)
                    }
                }
            }) //: Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            
        })
    }
}

#Preview {
    CategoryGridView()
}
