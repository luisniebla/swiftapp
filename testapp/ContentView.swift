//
//  ContentView.swift
//  testapp
//
//  Created by Luis Niebla Rios on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // Call modifiers on the Text display
        // By default, stacks center content along their axist
        VStack(alignment: .leading) {
            Text("Bell Rock")
                .accessibilityAddTraits([.isHeader])
                .font(.title)
                .fontWeight(.light)
                .accessibilityLabel("Title")
                .foregroundStyle(.blue)
                .backgroundStyle(.black)
            HStack {
                
                Text("Coconino National Forest")
                    .font(.subheadline)
                Spacer()
                Text("Sedona, Arizona")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
