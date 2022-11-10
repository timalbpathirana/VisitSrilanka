//
//  ContentView.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    
    let places: [Place] = Bundle.main.decode("places.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    @State private var isGridViewActive: Bool = false
    
    //: MARK - FUNCTIONS
    
    func gridSwitch() {
        withAnimation(.easeIn) {
            gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 2 + 1)
            gridColumn = gridLayout.count
            print("Grid Number: \(gridColumn)")
        }
      
      // TOOLBAR IMAGE
      switch gridColumn {
      case 1:
        toolbarIcon = "square.grid.2x2"
      case 2:
        toolbarIcon = "square.grid.3x2"
      default:
        toolbarIcon = "square.grid.2x2"
      }
    }
    
    //MARK: Body
    var body: some View {
        NavigationView{
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        ForEach(places) {place in
                            NavigationLink(destination:PlaceDetailView(place: place)){
                                PlaceListItemView(places: place)
                            }// LINK
                        }
                        CreditsView()
                            .modifier(CenterModifier())
                    }
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                      LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                        ForEach(places) { place in
                          NavigationLink(destination:
                            PlaceDetailView(place: place)) {
                            PlaceGridItemView(place: place)
                          } //: LINK
                        } //: LOOP
                      } //: GRID
                      .padding(10)
          //            .animation(.easeIn, value: gridLayout)
          //            .animation(.easeIn)
                    } //: SCROLL
                  }
            }// end group
            .listStyle(.plain)
            .navigationBarTitle("VISIT SRILANKA", displayMode: .large)
            .toolbar {
              ToolbarItem(placement: .navigationBarTrailing) {
                HStack(spacing: 16) {
                  // LIST
                  Button(action: {
                    print("List view is activated")
                    isGridViewActive = false
                    haptics.impactOccurred()
                  }) {
                    Image(systemName: "square.fill.text.grid.1x2")
                      .font(.title2)
                      .foregroundColor(isGridViewActive ? .primary : .accentColor)
                  }
                  
                  // GRID
                  Button(action: {
                    print("Grid view is activated")
                    isGridViewActive = true
                    haptics.impactOccurred()
                    gridSwitch()
                  }) {
                    Image(systemName: toolbarIcon)
                      .font(.title2)
                      .foregroundColor(isGridViewActive ? .accentColor : .primary)
                  }
                } //: HSTACK
              } //: BUTTONS
            } //: TOOLBAR
        }// NAV
    }
}

//MARK: Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
