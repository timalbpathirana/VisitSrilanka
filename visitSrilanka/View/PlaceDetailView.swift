//
//  PlaceDetailView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct PlaceDetailView: View {
    
    var place : Place
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: true) {
            VStack (alignment: .center, spacing: 20){
                // HERO IMAGE
                Image(place.image)
                  .resizable()
                  .scaledToFit()
                
                // TITLE
                Text(place.name.uppercased())
                  .font(.largeTitle)
                  .fontWeight(.heavy)
                  .multilineTextAlignment(.center)
                  .padding(.vertical, 8)
                  .foregroundColor(.primary)
                  .background(
                    Color.accentColor
                      .frame(height: 6)
                      .offset(y: 24)
                  )
                
                // HEADLINE
                Text(place.headline)
                  .font(.headline)
                  .multilineTextAlignment(.leading)
                  .foregroundColor(.accentColor)
                  .padding(.horizontal)
                
                // GALLERY
                Group {
                  HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Latest Photos")
                  
                  InsetGalleryView(place: place)
                }
                .padding(.horizontal)
                
                // FACTS
                Group {
                 HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                  
                 InsetFactView(place: place)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                  HeadingView(headingImage: "info.circle", headingText: "All about \(place.name)")
                  
                  Text(place.description)
                    .multilineTextAlignment(.leading)
                    .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                 HeadingView(headingImage: "map", headingText: "Location Details")
                  
                  InsetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                  HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                  
                  ExternalWeblinkView(place: place)
                }
                .padding(.horizontal)
            }// end VSTACK
            .navigationBarTitle("Learn about \(place.name)", displayMode: .inline)
        }// END Sroll
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static let places: [Place] = Bundle.main.decode("places.json")
    static var previews: some View {
        PlaceDetailView(place: places[0])
            .padding()
    }
}
