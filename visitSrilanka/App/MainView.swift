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
                    Label("Home", systemImage: "list.bullet.rectangle.fill")
                       }
            MapView()
                .tabItem{
                    Label("Map", systemImage: "map.fill")
                }
            ExploreLankaView()
                .tabItem {
                    Label("Hotels", systemImage: "house.fill")
                }
            ShopView()
                .tabItem {
                    Label("Shop", systemImage: "bag.fill")
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
