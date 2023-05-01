//
//  Place.swift
//  PlaceIveBeen
//
//  Created by Eric on 01/05/2023.
//

import Foundation

struct Place: Codable, Identifiable {
    var id: String?
    var city = ""
    var country = ""
    var flag = ""
}
