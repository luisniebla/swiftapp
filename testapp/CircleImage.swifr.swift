//
//  CircleImage.swifr.swift
//  testapp
//
//  Created by Luis Niebla Rios on 11/1/23.
//

import SwiftUI

struct CircleImage_swifr: View {
    var body: some View {
        HStack {
            
        }
        Image("sedona")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200)
            // The Circle type is a shape that you can use as a mask, or as a view by giving the circle a stroke or fill.
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius:7)
    }
}

#Preview {
    CircleImage_swifr()
}
