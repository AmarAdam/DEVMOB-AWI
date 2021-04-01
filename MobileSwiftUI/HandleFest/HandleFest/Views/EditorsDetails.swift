//
//  EditorsDetails.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/29/21.
//

import SwiftUI

struct EditorDetails: View{
    var editor : Editor
    
    init(_ editor: Editor){
        self.editor = editor
    }
    
    var body: some View {
        VStack{
                HStack{
                    Spacer()
                    Text("Nom de l'éditeur :")
                        .fontWeight(.black)
                        .foregroundColor(Color.blue)
                        .padding(.all, 5.0)
                    Text("\(editor.name)")
                        .padding(.all, 5.0)
                    Spacer()
                }
        }
        .navigationTitle(editor.name)
    }
}

