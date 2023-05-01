//
//  DetailView.swift
//  PlaceIveBeen
//
//  Created by Eric on 01/05/2023.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var placeVM: PlaceViewModel
    @State var place: Place
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Place Name:")
                .font(.title)
                .bold()
            
            TextField("Enter place name", text: $place.city)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
        }
        .padding()
        .font(.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(place: Place(city: "Timbuktu"))
            .environmentObject(PlaceViewModel())
    }
}
