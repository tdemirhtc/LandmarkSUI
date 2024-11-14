//
//  LandmarkListRowImage.swift
//  LandmarkSUI
//
//  Created by Hatice Taşdemir on 14.11.2024.
//

import SwiftUI

struct LandmarkListRowImage: View {
    var landmarkImageName : String
        var body: some View {
            Image(landmarkImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50, alignment: .leading)
        }
}

#Preview {
    LandmarkListRowImage(landmarkImageName: "pisa")
}
