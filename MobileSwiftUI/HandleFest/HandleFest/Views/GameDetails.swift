//
//  FestDetails.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import SwiftUI

struct GameDetails: View{
    var game : Game
    
    init(_ game: Game) {
        self.game = game
    }
    
    var body: some View {
        VStack{
                HStack{
                    Spacer()
                    Text("Nom du jeu :")
                        .fontWeight(.black)
                        .foregroundColor(Color.green)
                        .padding(.all, 5.0)
                    Text("\(game.name)")
                        .padding(.all, 5.0)
                    Spacer()
                }
                HStack(alignment: .top){
                    Spacer()
                    Text("Description :")
                        .fontWeight(.black)
                        .foregroundColor(Color.green)
                        .padding(.all, 5.0)
                    Text("\(game.description)")
                        .padding(.all, 5.0)
                    Spacer()
                }
                HStack(alignment: .top){
                    Spacer()
                    Text("Editeur :")
                        .fontWeight(.black)
                        .foregroundColor(Color.green)
                        .padding(.all, 5.0)
                    Text("\(game.editorName)")
                        .padding(.all, 5.0)
                    Spacer()
                }
        }
        .navigationTitle(game.name)
    }
}

struct GameDetails_Previews: PreviewProvider {
    static var game  : Game = Game(_id : "1", name: "JungleSpeed", description: "description", editorName: "Asmodée")
    static var previews: some View {
        Group {
            GameDetails(game)
            GameDetails(game)
                .environment(\.sizeCategory, .large)
        }
    }
}
