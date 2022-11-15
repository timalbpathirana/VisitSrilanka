//
//  CreditView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 10/11/2022.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      
      Text("""
  Copyright © Timal Pathirana
  All right reserved
  Visit Srilanka 🇱🇰
  """)
        .font(.footnote)
        .multilineTextAlignment(.center)
    } //: VSTACK
    .padding()
    .opacity(0.4)
  }
}

struct CreditsView_Previews: PreviewProvider {
  static var previews: some View {
    CreditsView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
