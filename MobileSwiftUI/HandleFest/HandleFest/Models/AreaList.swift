//
//  AreaList.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 4/1/21.
//

import Foundation

class AreaList : ObservableObject {
    
    private(set) var areas = [Area]()
    
    init(areas : [Area]){
        self.areas = areas
    }
}
