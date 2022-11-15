//
//  HotelModel.swift
//  visitSrilanka
//
//  Created by Timal Pathirana on 10/11/2022.
//

import Foundation

struct Hotel: Codable, Identifiable {
    let id : String
    let name: String
    let stars: Int
    let headline: String
    let rating : String
    let highlights : [String]
    let description : String
    let cleaning : [String]
    let checkin : String
    let checkout : String
    let gallery : [String]
    let link : String
    let coverImage : String
}
