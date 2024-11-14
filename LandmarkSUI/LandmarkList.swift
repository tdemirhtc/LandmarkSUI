//
//  LandmarkList.swift
//  LandmarkSUI
//
//  Created by Hatice Taşdemir on 14.11.2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
             List(landmarkArray){ landmark in
                 NavigationLink(destination: DetailsView(chosenLandmark: landmark)) {
                     LandmarkListRow(landmark: landmark)
                 }
                 
             }.navigationBarTitle(Text("Landmark Book"))
             }
    }
}

#Preview {
    LandmarkList()
}
