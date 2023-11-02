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
        VStack {
            MapView().frame(height: 300)
            CircleImage_swifr().offset(y: -100).padding(.bottom, -130)
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
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text("Sedona, Arizona").foregroundStyle(.secondary)
                }
                Divider()
                Text("More Info")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
