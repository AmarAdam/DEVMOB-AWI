//
//  GameList.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 26/03/2021.
//

import Foundation

class GameList : ObservableObject {
    
    private(set) var games = [Game]()
    
    init(games : [Game]){
        self.games = games
    }
}
