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
                           Label("Home", systemImage: "list.dash")
                       }
            MapView()
                .tabItem{
                    Label("Map", systemImage: "square.and.pencil")
                }

            InfoView()
                .tabItem {
                    Label("Info", systemImage: "square.and.pencil")
            }
            
            ContactView()
                .tabItem{
                    Label("Contact", systemImage: "square.and.pencil")
                }
            
               }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
