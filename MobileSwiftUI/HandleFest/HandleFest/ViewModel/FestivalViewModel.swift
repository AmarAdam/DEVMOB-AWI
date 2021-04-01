//
//  FestDetails.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import Foundation
import Combine

class FestivalViewModel: Identifiable, Equatable {
    static func == (lhs: FestivalViewModel, rhs: FestivalViewModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    private(set) var model : Festival
    var _id : String{
        return model._id
    }
    var date: String{
        return model.date
    }
    var description: String{
        return model.description
    }
    
    init(_ festival: Festival){
        self.model = festival
    }
    
}
