//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Palanisamy on 26/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scale = 1.0
    @State private var angle = 0.0
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Animated")
                //.scaleEffect(scale)
                .animation(.linear, value: scale)
            
            Image(systemName: "chevron.up")
                //.rotationEffect(Angle(degrees: angle))
                .zIndex(0.2)
                .animation(.linear, value: angle)
            
            Button("Press here") {
                scale += 1
                angle += 180
            }
            //.font(.system(size: scale))
            //.background(Color.green)
            .animation(.snappy, value: scale)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
