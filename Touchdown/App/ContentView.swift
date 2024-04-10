//
//  ContentView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-03-25.
//

import SwiftUI

struct ContentView: View {
    
  // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing:0) {
                
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
           
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack(spacing:0){
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width/1.475)
                            .padding(.vertical, 20)
                        
                        
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmates")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                           
                            ForEach(products){
                                product in
                                ProductItemView(prodct: product)
                            }
                            .padding(15)
                        })
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                       
                        
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                })
                
  
            } //: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: Zstack
        
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
}