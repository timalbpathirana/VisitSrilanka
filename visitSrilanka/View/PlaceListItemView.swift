//
//  PlaceListItemView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct PlaceListItemView: View {
    
    //MARK: Properties
    let places: Place
    
    var body: some View {
        HStack (alignment: .center , spacing: 12) {
            Image(places.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack (alignment: .leading, spacing: 8){
                Text(places.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(places.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
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
