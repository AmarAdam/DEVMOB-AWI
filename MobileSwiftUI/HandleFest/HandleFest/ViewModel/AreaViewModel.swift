//
//  AreaViewModel.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 4/1/21.
//

import Foundation

class AreaViewModel: Identifiable, Equatable {
    
    static func == (lhs: AreaViewModel, rhs: AreaViewModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    private(set) var model : Area
        
    var _id : String{
        return model._id
    }
    var number: Int{
        return model.number
    }
    var description: String{
        return model.description
    }
    
    init(_ area : Area){
        self.model = area
    }
}
