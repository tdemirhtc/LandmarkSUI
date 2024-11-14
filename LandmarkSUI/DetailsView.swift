//
//  ContentView.swift
//  LandmarkSUI
//
//  Created by Hatice Taşdemir on 14.11.2024.
//

import SwiftUI
struct DetailsView: View {
    var chosenLandmark : Landmark
    
    
    
    var body: some View {
        VStack {
            MapView(coordinate: londonBridgeLandmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: UIScreen.main.bounds.height * 0.3)
            
            CircleImageView(image: Image(londonBridgeLandmark.imageName))
                .frame(width:UIScreen.main.bounds.width * 0.9, height:UIScreen.main.bounds.height * 0.3)
                               .offset(y:UIScreen.main.bounds.height * -0.15)
                           .padding(.bottom,UIScreen.main.bounds.height * -0.15)
            VStack(alignment: .leading){
                Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(Color.orange )
                
                HStack{
                    Text(chosenLandmark.country)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(chosenLandmark.category)
                        .font(.subheadline)
                }
            }.padding()
              Spacer()
        }
        
    }
}

struct CircleImageView : View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white))
            .shadow(radius: 10)
            
    }
}

#Preview {
    DetailsView(chosenLandmark: londonBridgeLandmark)
}
