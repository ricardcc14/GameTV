//
//  ContentView.swift
//  GameTV
//
//  Created by Ricard Colet Cirbian on 19/11/25.
//

import SwiftUI

struct ContentView: View {
    //Stored no fa cap càlcul
    
    @State private var alertIsVisible = false
    @State private var value = 30.0
    
    //Computed var body pq té codi, ho necessita el struct: View
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("🎯🎯🎯").font(Font.largeTitle)
                Text("85")
                    .font(Font.largeTitle)
                    .kerning(-1)
                    .fontWeight(.bold)
                Slider(
                    value: $value,
                    in: 1...100,
                    step: 1)
                { Text("Slider") }
                minimumValueLabel: {Text("1").fontWeight(.bold)}
                maximumValueLabel: {Text("100").fontWeight(.bold)}
                Text("\(value)")
                Button("TRY"){
                    value+=1
                    alertIsVisible = true
                }.font(.title3)
                    .padding()
                    .foregroundColor(.white)
                    .background(.accent)
                    .cornerRadius(21)
                
                    
                
            }.padding()
        }
        .alert("Hello", isPresented: $alertIsVisible,
            actions: {Button("Got it"){
            print("TODO got it")
            alertIsVisible = false}},
            message: {Text("This is my first alert")})
            
        
    }
}

// Permet tenir el canva, no afecta a la app ni codi de deployment
#Preview {
    ContentView()
}
