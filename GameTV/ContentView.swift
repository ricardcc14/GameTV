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
                SliderView(value: $value, minValue: 1, maxValue: 100)
                Text("\(value)")
                Button("TRY"){
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

struct SliderView: View {
    @Binding var value:Double
    let minValue:Int
    let maxValue:Int
    var body : some View {
        Slider(
            value: $value,
            in: Double(minValue)...Double(maxValue),
            step: 1)
        { Text("Slider") }
        minimumValueLabel: {Text("\(minValue)").fontWeight(.bold)}
        maximumValueLabel: {Text("\(maxValue)").fontWeight(.bold)}
    }
}
// Permet tenir el canva, no afecta a la app ni codi de deployment
#Preview {
    ContentView()
}
