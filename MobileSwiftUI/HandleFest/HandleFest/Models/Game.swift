//
//  Game.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/24/21.
//

import Foundation

class Game : Identifiable, Codable{
    //identifier allow to list our games
    var _id : String
    public var name : String
    public var description : String
    public var editorName : String
    
    init(_id : String, name: String, description: String, editorName: String ){
        self._id = _id
        self.name = name
        self.description = description
        self.editorName = editorName
    }
}
