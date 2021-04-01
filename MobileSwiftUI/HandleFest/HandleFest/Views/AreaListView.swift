//
//  AreaListView.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 4/1/21.
//

import SwiftUI

struct AreaListView: View {
    
    @ObservedObject var areaList : AreasViewModel
    
    var intent : AreaIntent
    
    var myAreas : AreasViewModel {
        return self.areaList
    }
    
    init(areaList: AreasViewModel){
        self.areaList = areaList
        self.intent = AreaIntent(areas: areaList)
    }
    
    var body: some View {
        NavigationView{
            List{
                ForEach(myAreas.areas){ area in
                    NavigationLink(
                        destination:AreaDetails(area)){
                        AreaItem(area)
                    }
                }
            }.onAppear(perform: {intent.loadAreas()})
            .navigationTitle("Zones :")
        }
    }
    
}
