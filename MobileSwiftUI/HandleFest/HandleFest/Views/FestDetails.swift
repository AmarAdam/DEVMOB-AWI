//
//  FestDetails.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/23/21.
//

import SwiftUI

struct FestDetails: View{
    var festival : Festival
    
    class listGames: Decodable {
        var listgames: String
        
        init(_ listgames: String){
            self.listgames = listgames
        }
    }
    
    @State var ListG : String = ""
    
    init(_ festival: Festival) {
        self.festival = festival
    }
    
    func loadList(){
        guard let url = URL(string: "https://apidevmawi.herokuapp.com/reservations/listgamesm") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            print("")
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(listGames.self, from: data) {
                    print("on a de la donnée")
                    DispatchQueue.main.async {
                        print(decodedResponse)
                        let listgames = [listGames](arrayLiteral: decodedResponse)
                        self.ListG = decodedResponse.listgames
                        // ici, récupèrer les données : self.fests.model
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
    
    var body: some View {
        List{
            Section(header: Text("Description").bold()){
                VStack{
                    Text("\(festival.description)")
                }
            }
            Section(header:Text("Liste de jeux :").bold()){
                    Text(ListG)
                }
            .navigationTitle("Festival \(festival.date)")
        }.onAppear(perform: {loadList()})
        .listStyle(InsetGroupedListStyle())
    }
}

