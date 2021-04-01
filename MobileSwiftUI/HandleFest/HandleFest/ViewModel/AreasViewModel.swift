//
//  AreasViewModel.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 4/1/21.
//

import Foundation

class AreasViewModel: ObservableObject {
    
    @Published var model : AreaList
    
    init(_ areaList: AreaList){
        self.model = areaList
    }
        
    @Published var areas = [Area]()
}
