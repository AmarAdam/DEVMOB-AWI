//
//  FestViewModel.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import Foundation

class FestViewModel: ObservableObject {
    
    @Published var model : FestivalList
    
    init(_ festivalList: FestivalList){
        self.model = festivalList
    }
        
    @Published var festivals = [Festival]()
}
