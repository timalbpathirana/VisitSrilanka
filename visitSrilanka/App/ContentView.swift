//
//  ContentView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        NavigationView{
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarTitle("Visit Srilanka", displayMode: .automatic)
        }
    }
}

//MARK: Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
