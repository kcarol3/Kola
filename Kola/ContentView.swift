//
//  ContentView.swift
//  Kola
//
//  Created by student on 15/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State var color1: Color = .red
    @State var color2: Color = .blue
    var body: some View {
        var colorCircle: [Color] = [.red, .green, .yellow, .blue, .purple]
        VStack {
            Circle()
                .fill(color1)
                .frame(width: 200, height: 200)
                .opacity(0.5)
            Circle()
                .fill(color2)
                .frame(width: 200, height: 200)
                .opacity(0.5)
            
            Button(action: {
                color1 = colorCircle[Int.random(in: 0...4)]

                  }) {
                    Text("Losuj kolor 1")
                      .font(.title)
                  }
            
            Button(action: {
                color2 = colorCircle[Int.random(in: 0...4)]

                  }) {
                    Text("Losuj kolor 2")
                      .font(.title)
                  }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
