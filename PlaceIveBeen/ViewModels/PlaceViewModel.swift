//
//  PlaceViewModel.swift
//  PlaceIveBeen
//
//  Created by Eric on 01/05/2023.
//

import Foundation

class PlaceViewModel: ObservableObject {
    @Published var placesArray: [Place] = []

    init() {
        let places = ["Istanbul", "Valletta", "Palermo", "Vatican City", "San Marino", "Zurich"]
        
        for place in places {
            placesArray.append(Place(id: UUID().uuidString, city: place))
        }
    }
    
    func savePlace(place: Place) {
        var newPlace = place
        newPlace.id = UUID().uuidString
        placesArray.append(newPlace)
    }
}
