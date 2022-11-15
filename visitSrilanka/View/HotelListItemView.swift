//
//  HotelListItemView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 10/11/2022.
//

import SwiftUI

struct HotelListItemView: View {
    //MARK: Properties
    
    func getStars (numb: Int) -> String{
        var toReturn : String = ""
        switch numb {
        case 1:
            toReturn = "⭐️"
        case 2:
            toReturn = "⭐️⭐️"
        case 3:
            toReturn = "⭐️⭐️⭐️"
        case 4:
            toReturn = "⭐️⭐️⭐️⭐️"
        case 5:
            toReturn = "⭐️⭐️⭐️⭐️⭐️"
        default:
            toReturn = "N/A"
        }
        return toReturn
    }
    let hotel : Hotel
    
    var body: some View {
        HStack (alignment: .center, spacing: 10){
            Image(hotel.coverImage)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack (alignment: .leading, spacing: 4) {
                Text(hotel.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(hotel.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 2)
                HStack {
                    Text(getStars(numb:hotel.stars))
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                        .fontWeight(.heavy)
                        .padding(.trailing, 2)
                    Text("|")
                        .font(.footnote)
                        .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    Text(hotel.rating)
                        .font(.footnote)
                        .fontWeight(.heavy)
                    .foregroundColor(.primary)
                } //Hstack
                HStack {
                    Text("Check In \(hotel.checkin)")
                        .font(.footnote)
                        .fontWeight(.light)
                    .foregroundColor(.primary)
                    Text("•")
                        .font(.footnote)
                        .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    Text("Check Out \(hotel.checkout)")
                        .font(.footnote)
                        .fontWeight(.light)
                    .foregroundColor(.primary)
                }
                
                
            } //vstack
        }//hstack
        .frame(maxWidth: .infinity)
        .ignoresSafeArea()
       // .padding(.top, 5)
    }
}

struct HotelListItemView_Previews: PreviewProvider {
    static let hotels: [Hotel] = Bundle.main.decode("hotels.json")
    static var previews: some View {
        HotelListItemView(hotel: hotels[0])
    }
}
