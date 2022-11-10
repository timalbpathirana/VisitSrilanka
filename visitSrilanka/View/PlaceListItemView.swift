//
//  PlaceListItemView.swift
//  visitSrilanka
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct PlaceListItemView: View {
    
    //MARK: Properties
    let places: Place
    
    var body: some View {
        HStack (alignment: .center , spacing: 10) {
            Image(places.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack (alignment: .leading, spacing: 4){
                Text(places.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                HStack {
                    Text(places.type)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                        .fontWeight(.heavy)
                        .padding(.trailing, 2)
                    Text("|")
                        .font(.footnote)
                        .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    Text(places.ticket)
                        .font(.footnote)
                        .fontWeight(.heavy)
                    .foregroundColor(.primary)
                }
                Text("\(places.distanceFromCMB) km from Colombo")
                    .font(.footnote)
                    .fontWeight(.heavy)
                .foregroundColor(.primary)
                
                Text(places.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 2)
            }
        }
        .frame(maxWidth: .infinity)
        .ignoresSafeArea()
        .padding(.top, 5)
        }
    }

struct PlaceListItemView_Previews: PreviewProvider {
    static let places : [Place] = Bundle.main.decode("places.json")

    static var previews: some View {
        PlaceListItemView(places: places[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
        
}
