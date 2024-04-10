//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-02.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(players){ player in
                
              FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider{
    static var previews: some View{
        
        
        FeaturedTabView()
            .previewDevice("iphone 12 Pro")
            .background(Color.gray)
        
    }
    
}
