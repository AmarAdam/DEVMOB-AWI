//
//  EditorViewModel.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/29/21.
//

import Foundation

class EditorsViewModel: ObservableObject {
    
    @Published var model : EditorList
    
    init(_ editorList: EditorList){
        self.model = editorList
    }
        
    @Published var editors = [Editor]()
}
