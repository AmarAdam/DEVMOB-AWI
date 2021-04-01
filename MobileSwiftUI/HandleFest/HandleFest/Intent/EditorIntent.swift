//
//  EditorIntent.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/29/21.
//

import SwiftUI

class EditorIntent{
    
    @ObservedObject var editors : EditorsViewModel
    
    init(editors: EditorsViewModel){
        self.editors = editors
    }
    
    func loadEditors(){
        guard let url = URL(string: "https://apidevmawi.herokuapp.com/editors") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Editor].self, from: data) {
                    print("on a de la donnée")
                    DispatchQueue.main.async {
                        print("Result : \(decodedResponse[0].name)")
                        print("#Intent#")
                        print(decodedResponse)
                        var editors = [Editor]()
                        for editor in decodedResponse{
                            editors.append(Editor( _id : editor._id, name: editor.name))
                        }
                        self.editors.editors = editors
                        // ici, récupèrer les données : self.fests.model
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
