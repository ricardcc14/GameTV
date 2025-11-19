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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, swift!")
        }
        .padding()
    }
}

// Permet tenir el canva, no afecta a la app ni codi de deployment
#Preview {
    ContentView()
}
