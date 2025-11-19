//
//  ContentView.swift
//  GameTV
//
//  Created by Ricard Colet Cirbian on 19/11/25.
//

import SwiftUI

struct ContentView: View {
    //Stored no fa cap càlcul
    var name = "View"
    
    var area: Double { return 45*64 }
    //Computed var body pq té codi, ho necessita el struct: View
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("🎯🎯🎯").font(Font.largeTitle)
                Text("89")
                    .font(Font.largeTitle)
                    .kerning(-1)
                    .fontWeight(.bold)
                Slider(
                    value: .constant(60),
                    in: 1...100,
                    step: 1)
                { Text("Slider") }
                minimumValueLabel: {Text("1").fontWeight(.bold)}
                maximumValueLabel: {Text("100").fontWeight(.bold)}
                Button("TRY"){
                    print("try tapped")
                }.font(.title3)
                    .padding()
                    .foregroundColor(.white)
                    .background(.accent)
                    .cornerRadius(21)
                
            }.padding()
        }
    }
}

// Permet tenir el canva, no afecta a la app ni codi de deployment
#Preview {
    ContentView()
}
