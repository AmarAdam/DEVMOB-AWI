//
//  FestItem.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import SwiftUI

struct FestItem: View {
    
    var festival : Festival
    
    init(_ festival: Festival){
        self.festival = festival
    }
    
    var body: some View{
        VStack{
            Section(header: Text(festival.date)){
                Text("\(festival.description)")
            }
        }
    }
}

struct FestItem_Previews: PreviewProvider {
    static var festival : Festival = Festival(_id : "1", date: "2021", description: "description")
    static var previews: some View {
        FestItem(festival)
    }
}
