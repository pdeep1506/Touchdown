//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-04-02.
//

import SwiftUI

struct FeatureItemView: View {
    
    // MARK: - Property
    let player : Player
    
    
    // MARK: - Body
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeatureItemView_Previews: PreviewProvider{
    static var previews: some View{
        
        
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
        
    }
    
}
