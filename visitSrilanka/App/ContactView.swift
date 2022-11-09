//
//  ContactView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        
        VStack (alignment: .leading, spacing: 10) {
            Text("Hello, Welcome to Visit Srilanka App")
                .foregroundColor(.accentColor)
                .font(.title)
                .fontWeight(.heavy)
                .padding(.bottom)
                .multilineTextAlignment(.leading)
            
            Text("Hi, I am Timal and I am a coding enthuastic from Melbourne Australia. ")
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
                .padding(.bottom)
            Text("After COVID, Srilanka is going through a really hard times and I want to do something to encourage people to go visit my beautiful country.")
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.leading)
                .padding(.bottom)
            Text("In this app, you can see most famous places that you can visit in Srilanka. I did all the infomation gatherting so you do not have to spend time doing that. \nI am adding more content as I go and if you have any questions or if you like to suggest more places, ")
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.leading)
                .padding(.bottom)
            Text("Please feel free to email me at timal.online@gmail.com ")
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
                .padding(.bottom)
            Text("If you find this app helpful, you can show your support by buying a coffee below.")
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
                BMCButtonView()
            Spacer()
            
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
