//
//  MapView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
  // MARK: - PROPERTIES
  
  @State private var region: MKCoordinateRegion = {
    var mapCoordinates = CLLocationCoordinate2D(latitude: 7.8731, longitude: 80.7718)
      let span = MKCoordinateSpan(latitudeDelta: 2.5, longitudeDelta: 2.5)
    var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: span)
    
    return mapRegion
  }()
  
  let locations: [Place] = Bundle.main.decode("places.json")
  
  // MARK: - BODY
  
  var body: some View {
    // MARK: - No1 BASIC MAP
    // Map(coordinateRegion: $region)
    
    // MARK: - No2 ADVANCED MAP
    Map(coordinateRegion: $region,showsUserLocation: true, annotationItems: locations, annotationContent: { item in
      // (A) PIN: OLD STYLE (always static)
      // MapPin(coordinate: item.location, tint: .accentColor)
      
      // (B) MARKER: NEW STYLE (always static)
      // MapMarker(coordinate: item.location, tint: .accentColor)
      
      // (C) CUSTOM BASIC ANNOTATION (it could be interactive)
      // MapAnnotation(coordinate: item.location) {
      //   Image("logo")
      //     .resizable()
      //     .scaledToFit()
      //     .frame(width: 32, height: 32, alignment: .center)
      // } //: ANNOTATION
      
      // (D) CUSTOM ADVANCED ANNOTATION (it could be interactive)
        MapAnnotation(coordinate: item.location) {
            MapAnnotationView(newPlace: item)
      }
    }) //: MAP
    .overlay(
      HStack(alignment: .center, spacing: 12) {
        VStack(alignment: .leading, spacing: 3) {
          HStack {
            Text("Latitude:")
              .font(.footnote)
              .fontWeight(.bold)
              .foregroundColor(.accentColor)
            Spacer()
            Text("\(region.center.latitude)")
              .font(.footnote)
              .foregroundColor(.white)
          }
          
          Divider()
          
          HStack {
            Text("Longitude:")
              .font(.footnote)
              .fontWeight(.bold)
              .foregroundColor(.accentColor)
            Spacer()
            Text("\(region.center.longitude)")
              .font(.footnote)
              .foregroundColor(.white)
          }
        }
      } //: HSTACK
      .padding(.vertical, 12)
      .padding(.horizontal, 16)
      .background(
        Color.black
          .cornerRadius(8)
          .opacity(0.6)
      )
      .padding()
      , alignment: .top
    )
  }
}

// MARK: - PREVIEW

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
      .previewDevice("iPhone 13")
  }
}
