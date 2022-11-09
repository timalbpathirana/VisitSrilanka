//
//  InsetFactView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct InsetFactView: View {
  // MARK: - PROPERTIES
  
  let place: Place

  // MARK: - BODY

  var body: some View {
    GroupBox {
      TabView {
        ForEach(place.fact, id: \.self) { item in
          Text(item)
        }
      } //: TABS
      .tabViewStyle(PageTabViewStyle())
      .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
    } //: BOX
  }
}

// MARK: - PREVIEW

struct InsetFactView_Previews: PreviewProvider {
  static let places: [Place] = Bundle.main.decode("places.json")
  
  static var previews: some View {
    InsetFactView(place: places[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
