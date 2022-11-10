//
//  PlaceGridItemView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 10/11/2022.
//

import SwiftUI

struct PlaceGridItemView: View {
    
    let place: Place
    var body: some View {
        ZStack{
            Image(place.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
        .cornerRadius(12)
        .overlay(alignment: .bottom){
            VStack(alignment: .leading){
                Text(place.name)
                    .foregroundColor(.white)
                    .font(.title)
                    .shadow(color: .black, radius: 5, x: 0, y: 0)
                .fontWeight(.heavy)
                Text(place.ticket)
                    .foregroundColor(.white)
                    .font(.footnote)
                    .shadow(color: .black, radius: 3, x: 0, y: 0)
                .fontWeight(.heavy)
            }// vstack
            .padding()
            .overlay {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .opacity(0.4)
                    .padding(6)
            }
            
            
        }// overlay
        }// Vstack
        .frame(width: 200, height: 230, alignment: .top)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct PlaceGridItemView_Previews: PreviewProvider {
    static let places: [Place] = Bundle.main.decode("places.json")
    static var previews: some View {
        PlaceGridItemView(place: places[0])
    }
}
