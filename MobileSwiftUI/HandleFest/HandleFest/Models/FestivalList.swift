//
//  FestivalList.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 26/03/2021.
//

import Foundation

class FestivalList: ObservableObject {
    
    private(set) var festivals = [Festival]()
    
    init(festivals : [Festival]){
        self.festivals = festivals
    }
}
