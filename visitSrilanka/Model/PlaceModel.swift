//
//  PlaceModel.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 9/11/2022.
//

import Foundation

struct Place: Identifiable, Codable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let fact: [String]
    let gallery: [String]
}