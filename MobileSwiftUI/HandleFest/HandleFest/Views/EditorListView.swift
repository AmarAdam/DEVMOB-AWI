//
//  EditorListView.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/29/21.
//

import SwiftUI

struct EditorListView: View {
    
    @ObservedObject var editorList : EditorsViewModel
    
    var intent : EditorIntent
    
    var myEditors : EditorsViewModel {
        return self.editorList
    }
    
    init(editorList: EditorsViewModel){
        self.editorList = editorList
        self.intent = EditorIntent(editors: editorList)
    }
    
    var body: some View {
        NavigationView{
            List{
                ForEach(myEditors.editors){ editor in
                    NavigationLink(
                        destination:EditorDetails(editor)){
                        EditorItem(editor)
                    }
                }
            }.onAppear(perform: {intent.loadEditors()})
            .navigationTitle("Editeurs :")
        }
    }
    
}
