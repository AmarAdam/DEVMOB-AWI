//
//  Editor.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/29/21.
//

import Foundation

class Editor : Identifiable, Codable{
    var _id : String
    public var name : String
    
    init(_id : String, name: String){
        self._id = _id
        self.name = name
    }
    
}
