//
//  AreaDetails.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 4/1/21.
//

import SwiftUI

struct AreaDetails: View{
    var area : Area
    
    init(_ area: Area){
        self.area = area
    }
    
    var body: some View {
        VStack{
            Spacer()
            Text("Description de la Zone :")
                .fontWeight(.black)
                .foregroundColor(Color.red)
                .padding(.all, 5.0)
            Text(area.description)
                .padding(.all, 5.0)
            Text("Afin d'atteindre cette Zone, n'hésitez pas à demander votre chemin à un bénévole !")
                .padding(.all, 5.0)
            Spacer()

        }
        .navigationTitle("Zone \(String(area.number))")
    }
}
