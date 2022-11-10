//
//  ExploreLankaView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 10/11/2022.
//

import SwiftUI

struct ExploreLankaView: View {
   
    var hotels: [Hotel] = Bundle.main.decode("hotels.json")
    var body: some View {
        VStack {
            NavigationView{
                List {
                    //CoverImageView()
                    Image("hotelCover")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .ignoresSafeArea()
                    ForEach(hotels) {hotel in
                        NavigationLink(destination: ContactView()){
                            HotelListItemView(hotel: hotel)
                        }
                    }
                    CreditsView()
                        .modifier(CenterModifier())
                }// List
            }//Nav
            .listStyle(.plain)
            .navigationBarTitle("Hotels", displayMode: .large)
        }
        
    }
}

struct ExploreLankaView_Previews: PreviewProvider {
    static var hotels: [Hotel] = Bundle.main.decode("hotels.json")
    static var previews: some View {
        ExploreLankaView()
    }
}
