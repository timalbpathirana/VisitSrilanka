//
//  PlaceModel.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import Foundation
import MapKit

struct Place: Identifiable, Codable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let fact: [String]
    let gallery: [String]
    let latitude: Double
    let longitude: Double
    let ticket: String
    
    
    var location : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
