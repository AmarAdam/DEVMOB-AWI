//
//  FestivalList.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/25/21.
//

import SwiftUI

struct GameListView: View {
    
    @ObservedObject var gameList : GamesViewModel
    
    var intent : GameIntent
    
    var myGames : GamesViewModel {
        return self.gameList
    }
    
    init(gameList: GamesViewModel){
        self.gameList = gameList
        self.intent = GameIntent(games: gameList)
    }
    
    var body: some View {
        NavigationView{
            List{
                ForEach(myGames.games){ game in
                    NavigationLink(
                        destination:GameDetails(game)){
                        GameItem(game)
                    }
                }
            }.onAppear(perform: {intent.loadGames()})
            .navigationTitle("Jeux :")
        }
    }
    
}
