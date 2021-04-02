//
//  EditorItem.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/29/21.
//

import SwiftUI

struct EditorItem: View {
    
    var editor : Editor
    
    init(_ editor: Editor){
        self.editor = editor
    }
    
    var body: some View{
            VStack{
                HStack{
                    Text(editor.name).bold()
                    Spacer()
                }
            }
    }
}
