//
//  ContentView.swift
//  PlaceIveBeen
//
//  Created by Eric on 01/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var places = ["Istanbul", "Valletta", "Palermo", "Vatican City", "San Marino", "Zurich"]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                List {
                    ForEach(places, id: \.self) { place in
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(.blue)
                            Text(place)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
