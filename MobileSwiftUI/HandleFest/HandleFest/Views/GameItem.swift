//
//  FestItem.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import SwiftUI

struct GameItem: View {
    
    var game : Game
    
    init(_ game: Game){
        self.game = game
    }
    
    var body: some View{
            VStack{
                HStack{
                    Text(game.name).bold()
                    Spacer()
                    Text("Editeur : "+"\(game.editorName)")
                }
                HStack{
                    Text(game.description).foregroundColor(.gray)
                }
            }
    }
}

struct GameItem_Previews: PreviewProvider {
    static var game : Game = Game(_id : "1", name:"Name" , description: "desc", editorName: "editor")
    static var previews: some View {
        GameItem(game)
    }
}
