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
        if place.id == nil {
            var newPlace = place
            newPlace.id = UUID().uuidString
            placesArray.append(newPlace)
        } else {
            if let index = placesArray.firstIndex(where: { $0.id == place.id }) {
                placesArray[index] = place
            }
        }
    }
    
    func deletePlace(indexSet: IndexSet) {
        placesArray.remove(atOffsets: indexSet)
    }
    
    func movePlace(fromOffsets: IndexSet, toOffset: Int) {
        placesArray.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}
