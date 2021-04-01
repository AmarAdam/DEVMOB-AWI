//
//  Area.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 4/1/21.
//

import Foundation


class Area : Identifiable, Codable{
    //identifier allow to list our areas
    var _id : String
    public var number : Int
    public var description : String
    
    init(_id : String, number: Int, description: String ){
        self._id = _id
        self.number = number
        self.description = description
    }
}
