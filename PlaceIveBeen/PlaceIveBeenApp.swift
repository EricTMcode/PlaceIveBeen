//
//  PlaceIveBeenApp.swift
//  PlaceIveBeen
//
//  Created by Eric on 01/05/2023.
//

import SwiftUI

@main
struct PlaceIveBeenApp: App {
    @StateObject var placeVM = PlaceViewModel()
    var body: some Scene {
        WindowGroup {
            PlaceListView()
                .environmentObject(placeVM)
        }
    }
}
