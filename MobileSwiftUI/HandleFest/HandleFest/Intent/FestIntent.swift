//
//  FestIntent.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import SwiftUI

class FestIntent{
    
    @ObservedObject var fests : FestViewModel
    
    init(fests: FestViewModel){
        self.fests = fests
    }
    
    func loadFests(){
        guard let url = URL(string: "https://apidevmawi.herokuapp.com/festivals") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Festival].self, from: data) {
                    print("on a de la donnée")
                    DispatchQueue.main.async {
                        print("Result : \(decodedResponse[0].date)")
                        print("#Intent#")
                        print(decodedResponse)
                        var festivals = [Festival]()
                        for fest in decodedResponse{
                            festivals.append(Festival(_id : fest._id, date: fest.date, description: fest.description))
                        }
                        self.fests.festivals = festivals
                        // ici, récupèrer les données : self.fests.model  
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
