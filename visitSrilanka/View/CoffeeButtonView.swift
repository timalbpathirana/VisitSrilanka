//
//  CoffeeButtonView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct CoffeeButtonView: View {
    @Environment(\.openURL) var openURL
    var name: String
    var image: String
    var url: String
        var body: some View {
            Button {
                openURL(URL(string: url)!)
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 150, height: 30)
                        .foregroundColor(Color("BMCColor"))
                        
                    VStack {
                        Image(image)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red)
                        Text(name)
                            .font(.title2)
                            .font(.title2)
                            .foregroundColor(.accentColor)
                    }
                }
            }.buttonStyle(.plain)
        }
}

struct CoffeeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeButtonView(name: "Instagram", image: "instagram", url: "url")
    }
}
