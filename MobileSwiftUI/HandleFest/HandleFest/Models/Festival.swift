//
//  Festival.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import Foundation

class Festival : Identifiable, ObservableObject, Codable{
    //identifier allow to list our fests
    //var id = UUID()
    var _id : String
    var date : String
    var description : String
    
    init(_id : String, date: String, description: String){
        self._id = _id
        self.date = date
        self.description = description
    }
}
