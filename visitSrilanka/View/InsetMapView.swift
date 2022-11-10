//
//  InsetMapView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct InsetMapView: View {
  // MARK: - PROPERTIES
    
    let place: Place
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 7.8731, longitude: 80.7718), span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0))
    
  // MARK: - BODY

  var body: some View {
      
      let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude), tint: .accentColor))]
      ZStack {
          Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: markers) { marker in
              marker.location
          }
          .edgesIgnoringSafeArea(.all)
          .overlay(
            NavigationLink(destination: MapView()) {
              HStack {
                Image(systemName: "mappin.circle")
                  .foregroundColor(Color.white)
                  .imageScale(.large)
                
                Text("Locations")
                  .foregroundColor(.accentColor)
                  .fontWeight(.bold)
              } //: HSTACK
              .padding(.vertical, 10)
              .padding(.horizontal, 14)
              .background(
                Color.black
                  .opacity(0.4)
                  .cornerRadius(8)
              )
            } //: NAVIGATION
            .padding(12)
            , alignment: .topTrailing
          )
          .frame(height: 256)
      .cornerRadius(12)
          //MapAnnotationView(newPlace: place)
      }// ZStack
  }
    
}

// MARK: - PREVIEW

struct InsetMapView_Previews: PreviewProvider {
    static let place: [Place] = Bundle.main.decode("places.json")
  static var previews: some View {
      InsetMapView(place: place[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
