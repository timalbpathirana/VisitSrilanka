//
//  MainView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                       .tabItem {
                           Label("Home", systemImage: "house.fill")
                       }
            ExploreLankaView()
                .tabItem {
                    Label("Explore", systemImage: "figure.walk")
                }
            MapView()
                .tabItem{
                    Label("Map", systemImage: "map.fill")
                }

            InfoView()
                .tabItem {
                    Label("News", systemImage: "info.circle.fill")
            }
            
            ContactView()
                .tabItem{
                    Label("Contact", systemImage: "text.bubble.fill")
                }
            
               }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
