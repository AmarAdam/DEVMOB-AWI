//
//  Home.swift
//  HandleFest (iOS)
//
//  Created by etud on 01/04/2021.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Visitez le Festival du Jeu de Montpellier !")
                Spacer()
                NavigationLink(
                    destination:MainView()){
                    Text("Entrez")
                }
                Spacer()
            }
            .navigationBarHidden(true)
            //.navigationTitle("")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
