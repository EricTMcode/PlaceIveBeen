//
//  DetailView.swift
//  PlaceIveBeen
//
//  Created by Eric on 01/05/2023.
//

import SwiftUI

struct DetailView: View {
    @State var placeName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Place Name:")
                .font(.title)
                .bold()
            
            TextField("Enter place name", text: $placeName)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
        }
        .padding()
        .font(.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(placeName: "Timbuktu")
    }
}
