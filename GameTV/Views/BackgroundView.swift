//
//  BackgroundView.swift
//  GameTV
//
//  Created by Ricard Colet Cirbian on 26/11/25.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var game:Game
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                HStack{
                    Button(action: {game.reset()}){
                        RoundedImageView(sfSymbolName: "arrow.clockwise")
                    }
                    Spacer()
                    RoundedImageView(sfSymbolName: "list.dash")
                }
                Spacer()
                HStack {
                    
                    NumberView(title: "SCORE", value:game.score)
                    Spacer()
                    NumberView(title: "ROUND", value:game.nRound)
                    
                }
            }.padding()
        }
    }
}

#Preview {
    BackgroundView(game: .constant(Game()))
}
