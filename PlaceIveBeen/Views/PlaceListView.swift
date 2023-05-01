//
//  PlaceListView.swift
//  PlaceIveBeen
//
//  Created by Eric on 01/05/2023.
//

import SwiftUI

struct PlaceListView: View {
    @EnvironmentObject var placeVM: PlaceViewModel
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                List {
                    ForEach(placeVM.placesArray) { place in
                        NavigationLink {
                            DetailView(place: place)
                        } label: {
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                    .foregroundColor(.blue)
                                Text(place.city)
                            }
                        }
                    }
                }
            }
            .font(.title2)
            .listStyle(.plain)
            .navigationTitle("Places I've Been:")
        }
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView()
            .environmentObject(PlaceViewModel())
    }
}
