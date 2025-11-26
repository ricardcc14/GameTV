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
    @State private var value = Double(Game.maxValue+Game.minValue)/2
    
    @State var game = Game()
    //Computed var body pq té codi, ho necessita el struct: View
    var body: some View {
        ZStack{
            BackgroundView()
            
            VStack {
                Text("🎯🎯🎯").font(Font.largeTitle)
                Text("\(game.target)")
                    .font(Font.largeTitle)
                    .kerning(-1)
                    .fontWeight(.bold)
                SliderView(value: $value, minValue: Game.minValue, maxValue: Game.maxValue)
                Text("\(value)")
                Button("TRY"){
                    game.calculatePoints(userValue: value)
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
            game.restart()
            value = Double(Game.maxValue+Game.minValue)/2
            print("TODO got it")
            alertIsVisible = false}},
            message: {Text("Congrats your points are \(game.points)")})
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
