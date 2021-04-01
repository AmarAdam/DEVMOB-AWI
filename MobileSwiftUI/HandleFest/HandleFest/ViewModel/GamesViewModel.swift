//
//  FestDetails.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import Foundation

class GamesViewModel: ObservableObject {
    
    @Published var model : GameList
    
    init(_ gameList: GameList){
        self.model = gameList
    }
        
    @Published var games = [Game]()
}
