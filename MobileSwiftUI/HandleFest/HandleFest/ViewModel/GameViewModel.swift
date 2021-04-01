//
//  GameViewModel.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 26/03/2021.
//

import Foundation

class GameViewModel: Identifiable, Equatable {
    
    static func == (lhs: GameViewModel, rhs: GameViewModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    private(set) var model : Game
        
    var _id : String{
        return model._id
    }
    var name: String{
        return model.name
    }
    var description: String{
        return model.description
    }
    var editorName: String{
        return model.editorName
    }
    
    init(_ game : Game){
        self.model = game
    }
}
