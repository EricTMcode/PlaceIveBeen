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
        saveData()
    }
    
    func deletePlace(indexSet: IndexSet) {
        placesArray.remove(atOffsets: indexSet)
        saveData()
    }
    
    func movePlace(fromOffsets: IndexSet, toOffset: Int) {
        placesArray.move(fromOffsets: fromOffsets, toOffset: toOffset)
        saveData()
    }
    
    //MARK: - Document Directory
    
    let path = URL.documentsDirectory.appending(component: "placesArray")
    
    func saveData() {
        let data = try? JSONEncoder().encode(placesArray)
        do {
            try data?.write(to: path)
        } catch {
            print("😡 ERROR: Could not save data \(error.localizedDescription)")
        }
    }
}
