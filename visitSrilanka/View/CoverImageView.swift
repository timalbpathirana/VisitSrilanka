//
//  CoverImageView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct CoverImageView: View {
  // MARK: - PROPERTIES
  
  let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
  
  // MARK: - BODY
  
  var body: some View {
    TabView {
      ForEach(coverImages) { item in
          Image(item.name)
          .resizable()
          .scaledToFit()
      } //: LOOP
    } //: TAB
    .tabViewStyle(PageTabViewStyle())
    .ignoresSafeArea()
  }
}

// MARK: - PREVIEW

struct CoverImageView_Previews: PreviewProvider {
  static var previews: some View {
    CoverImageView()
     .previewLayout(.fixed(width: 400, height: 300))
  }
}
