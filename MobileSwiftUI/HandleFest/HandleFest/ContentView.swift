//
//  ContentView.swift
//  Shared
//
//  Created by user188962 on 3/23/21.
//

import SwiftUI

struct Response: Codable{
    var results: [Festival]
}
struct FestivalData : Codable{
    var _id : String
    var date : String
    var description : String
}
struct ContentView: View {
    
    @State private var results = [Festival]()

    @State var fests = [Festival]()
    
    func loadFests(){
        guard let url = URL(string: "https://apidevmawi.herokuapp.com/festivals") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        print("URL ok")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            print("url session ")
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([FestivalData].self, from: data) {
                    // we have good data – go back to the main thread
                    print("on a de la donnée")
                    DispatchQueue.main.async {
                        // update our UI
                        //self.results = decodedResponse.results
                        print("Result : \(decodedResponse[0].date)")
                        var festivals = [Festival]()
                        for fest in decodedResponse{
                            print("###")
                            print(fest)
                            festivals.append(Festival(_id: fest._id, date: fest.date, description: fest.description))
                        }
                        fests = festivals
                    }
                    // everything is good, so we can exit
                    return
                }
            }
            
            print(results)

            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
    
    var body: some View {
        NavigationView{
            List{
                ForEach(self.fests){ fest in
                    NavigationLink(
                        destination:FestDetails(fest)){
                        FestItem(fest)
                    }                }
            }.onAppear(perform: {loadFests()})
            .navigationTitle("Festivals :")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
