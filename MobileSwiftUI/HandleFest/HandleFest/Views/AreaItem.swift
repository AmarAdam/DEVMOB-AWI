//
//  AreaItem.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 4/1/21.
//

import SwiftUI

struct AreaItem: View {
    
    var area : Area
    
    init(_ area: Area){
        self.area = area
    }
    
    var body: some View{
        VStack{
            HStack{
                Text(String(area.description)).bold()
                Spacer()
                Text(String(area.number))
            }
        }
    }
}
