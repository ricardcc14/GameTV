//
//  BackgroundView.swift
//  GameTV
//
//  Created by Ricard Colet Cirbian on 26/11/25.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                HStack{
                    RoundedImageView(sfSymbolName: "arrow.clockwise")
                    Spacer()
                    RoundedImageView(sfSymbolName: "list.dash")
                }
                Spacer()
                HStack {
                    
                    NumberView(title: "SCORE", value:99)
                    Spacer()
                    NumberView(title: "ROUND", value:0)
                    
                }
            }.padding()
        }
    }
}

#Preview {
    BackgroundView()
}
