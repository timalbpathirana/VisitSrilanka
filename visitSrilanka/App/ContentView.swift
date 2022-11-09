//
//  ContentView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    let places: [Place] = Bundle.main.decode("places.json")
    
    //MARK: Body
    var body: some View {
        NavigationView{
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            ForEach(places) {place in
                PlaceListItemView(places: place)
                    
                    
                
            }
            }
            .navigationBarTitle("Visit Srilanka", displayMode: .large)
        }
    }
}

//MARK: Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
