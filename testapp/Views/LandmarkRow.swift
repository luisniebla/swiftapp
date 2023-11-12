//
//  LandmarkRow.swift
//  testapp
//
//  Created by Luis Niebla Rios on 11/11/23.
//

import Foundation
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}


#Preview {
    LandmarkRow(landmark: landmarks[0])
}