//
//  ContentView.swift
//  FaceGen
//
//  Created by Patrick Burnett-Downie on 2025-04-29.
//

import SwiftUI

struct ContentView: View {
    // List of faces
    let faces = ["😀", "😎", "🤓", "🤠", "😱", "😇", "👻", "🤖"]
    
    // The currently displayed face
    @State private var currentFace = "😀"

    var body: some View {
        VStack(spacing: 40) {
            Text(currentFace)
                .font(.system(size: 100))
                .padding()

            Button(action: {
                currentFace = faces.randomElement() ?? "😀"
            }) {
                Text("New Face")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
