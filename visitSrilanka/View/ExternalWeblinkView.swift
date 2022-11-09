//
//  ExternalWeblinkView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct ExternalWeblinkView: View {
  // MARK: - PROPERTIES
  
  let place: Place

  // MARK: - BODY

  var body: some View {
    GroupBox {
      HStack {
        Image(systemName: "globe")
        Text("Wikipedia")
        Spacer()
        
        Group {
          Image(systemName: "arrow.up.right.square")
          
          Link(place.name, destination: (URL(string: place.link) ?? URL(string: "https://wikipedia.org"))!)
        }
        .foregroundColor(.accentColor)
      } //: HSTACK
    } //: BOX
  }
}

// MARK: - PREIVEW

struct ExternalWeblinkView_Previews: PreviewProvider {
  static let places: [Place] = Bundle.main.decode("places.json")
  
  static var previews: some View {
    ExternalWeblinkView(place: places[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
