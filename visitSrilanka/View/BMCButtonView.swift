//
//  BMCButtonView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct BMCButtonView: View {
    @Environment(\.openURL) var openURL
        var body: some View {
            Button {
                openURL(URL(string: "https://google.com")!)
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color("BMCColor"))
                        
                    HStack {
                        Image("coffeeCup")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.red)
                            .padding(.leading)
                        Text("Buy Me A Coffee")
                            .font(.custom("Cookie", size: 30))
                            .font(.title2)
                            .padding(.trailing)
                            .foregroundColor(.accentColor)
                    }
                }
                .padding(20)
            }.buttonStyle(.plain)
        }
}

struct BMCButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BMCButtonView()
    }
}
