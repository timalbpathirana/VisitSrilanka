//
//  ShopView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 10/11/2022.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack (spacing: 20) {
            Image("TettoLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
