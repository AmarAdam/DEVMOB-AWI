//
//  AreaIntent.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 4/1/21.
//

import SwiftUI

class AreaIntent{
    
    @ObservedObject var areas : AreasViewModel
    
    init(areas: AreasViewModel){
        self.areas = areas
    }
    
    func loadAreas(){
        guard let url = URL(string: "https://apidevmawi.herokuapp.com/areas") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Area].self, from: data) {
                    print("on a de la donnée")
                    DispatchQueue.main.async {
                        print("Result : \(decodedResponse[0].number)")
                        print("#Intent#")
                        print(decodedResponse)
                        var areas = [Area]()
                        for area in decodedResponse{
                            areas.append(Area( _id : area._id, number: area.number, description: area.description))
                        }
                        self.areas.areas = areas
                        // ici, récupèrer les données : self.fests.model
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
