//
//  MapAnnotationView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 10/11/2022.
//
import SwiftUI

struct MapAnnotationView: View {
  // MARK: - PROPERTIES
  
  var newPlace: Place
  @State private var animation: Double = 0.0
  
  // MARK: - BODY

  var body: some View {
    ZStack {
      Circle()
        .fill(Color.accentColor)
        .frame(width: 54, height: 54, alignment: .center)
      
      Circle()
        .stroke(Color.accentColor, lineWidth: 2)
        .frame(width: 52, height: 52, alignment: .center)
        .scaleEffect(1 + CGFloat(animation))
        .opacity(1 - animation)
      
        Image(newPlace.image)
        .resizable()
        .scaledToFit()
        .frame(width: 38, height: 38, alignment: .center)
        .clipShape(Circle())
    } //: ZSTACK
    .onAppear {
      withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
        animation = 1
      }
    }
  }
}

// MARK: - PREVIEW

struct MapAnnotationView_Previews: PreviewProvider {
  static var place: [Place] = Bundle.main.decode("places.json")
  
  static var previews: some View {
      MapAnnotationView(newPlace: place[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
