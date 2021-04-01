//
//  EditorViewModel.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/29/21.
//

import Foundation

class EditorViewModel: Identifiable, Equatable {
    
    static func == (lhs: EditorViewModel, rhs: EditorViewModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    private(set) var model : Editor
        
    var _id : String{
        return model._id
    }
    var name: String{
        return model.name
    }
    
    init(_ editor : Editor ){
        self.model = editor
    }
}
