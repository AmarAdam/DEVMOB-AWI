//
//  FestivalList.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/25/21.
//

import SwiftUI

struct FestivalListView: View {
    
    @ObservedObject var festivalList : FestViewModel
    
    var intent : FestIntent
    
    var myFestivals : FestViewModel {
        return self.festivalList
    }
    
    init(festivalList: FestViewModel){
        self.festivalList = festivalList
        self.intent = FestIntent(fests: festivalList)
    }
    
    var body: some View {
        NavigationView{
            List{
                ForEach(myFestivals.festivals){ fest in
                    NavigationLink(
                        destination:FestDetails(fest)){
                        FestItem(fest)
                    }
                }
            }.onAppear(perform: {intent.loadFests()})
            .navigationTitle("Festivals :")
        }
    }
    
}
