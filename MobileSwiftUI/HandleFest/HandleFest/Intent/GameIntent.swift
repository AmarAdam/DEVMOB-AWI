//
//  FestIntent.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import SwiftUI

class GameIntent{
    
    @ObservedObject var games : GamesViewModel
    
    init(games: GamesViewModel){
        self.games = games
    }
    
    func loadGames(){
        guard let url = URL(string: "https://apidevmawi.herokuapp.com/games") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Game].self, from: data) {
                    print("on a de la donnée")
                    DispatchQueue.main.async {
                        print("Result : \(decodedResponse[0].name)")
                        print("#Intent#")
                        print(decodedResponse)
                        var games = [Game]()
                        for game in decodedResponse{
                            games.append(Game(_id : game._id, name: game.name, description: game.description, editorName: game.editorName))
                        }
                        self.games.games = games
                        // ici, récupèrer les données : self.fests.model
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
