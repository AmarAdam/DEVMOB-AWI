//
//  EditorList.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/29/21.
//

import Foundation

class EditorList : ObservableObject {
    
    private(set) var editors = [Editor]()
    
    init(editors : [Editor]){
        self.editors = editors
    }
}
