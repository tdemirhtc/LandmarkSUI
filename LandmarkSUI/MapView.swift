//
//  MapView.swift
//  LandmarkSUI
//
//  Created by Hatice Taşdemir on 14.11.2024.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    var coordinate : CLLocationCoordinate2D
    //en son göstermek istediğimiz verileri bu görünüm içinde gösterilmeisne olanak sağlar. yazdığım koordinatları göster
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //ne kadar zoomlayacağımızı gösteren
       
           
        // MapView her güncellendiğinde bu fonksiyon çağrılır
        func updateUIView(_ uiView: MKMapView, context: Context) {
            let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            uiView.setRegion(region, animated: true)
        }
    }
    // uıkit oluşturur bu gösterilir. mapview oluşması için yazılacak
    // MapView oluşturulurken bu fonksiyon çağrılır
        func makeUIView(context: Context) -> MKMapView {
            let mapView = MKMapView(frame: .zero)
            return mapView
        }
        
        
    }
    
    
   

#Preview {
    MapView(coordinate: landmarkArray[0].locationCoordinate)
}


