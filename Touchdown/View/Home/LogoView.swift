//
//  LogoView.swift
//  Touchdown
//
//  Created by Deep Patel on 2024-03-30.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing:4){
            Text("Touch".uppercased())
                .font(.title3)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }   //: HStack
    }
}

#Preview {
    LogoView()
        .previewLayout(.sizeThatFits)
        .padding()
}
