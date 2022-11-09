//
//  InsetGalleryView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct InsetGalleryView: View {
  // MARK: - PROPERTIES
  
  let place: Place
  
  // MARK: - BODY

  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(alignment: .center, spacing: 15) {
          ForEach(place.gallery, id: \.self) { item in
          Image(item)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .cornerRadius(12)
        } //: LOOP
      } //: HSTACK
    } //: SCROLL
  }
}

// MARK: - PREVIEW

struct InsetGalleryView_Previews: PreviewProvider {
  static let places: [Place] = Bundle.main.decode("places.json")
  
  static var previews: some View {
    InsetGalleryView(place: places[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
