//
//  LandmarkListRow.swift
//  LandmarkSUI
//
//  Created by Hatice Taşdemir on 14.11.2024.
//

import SwiftUI

struct LandmarkListRow: View {
    var landmark : Landmark
        var body: some View {
            HStack{
                LandmarkListRowImage(landmarkImageName: landmark.imageName)
                Text(landmark.name)
            }
        }
}

#Preview {
    LandmarkListRow(landmark: londonBridgeLandmark)
}
