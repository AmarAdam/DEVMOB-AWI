//
//  MainView.swift
//  HandleFest (iOS)
//
//  Created by user188962 on 3/25/21.
//

import SwiftUI

struct MainView: View {
    
    @State private var tabSelected = 1
    
    @StateObject var FestivalVM : FestViewModel = FestViewModel(FestivalList(festivals: [Festival(_id : "1", date: "2018", description: "toto tata")]))
    
    @StateObject var GameVM : GamesViewModel = GamesViewModel(GameList(games: [Game(_id : "1", name: "game", description: "toto tata", editorName: "editor")]))
    
    @StateObject var EditorVM : EditorsViewModel = EditorsViewModel(EditorList(editors: [Editor(_id : "1", name: "Hasbro")]))
    
    @StateObject var AreaVM : AreasViewModel = AreasViewModel(AreaList(areas: [Area(_id:"1",number: 1, description:"")]))
    
    var body: some View{
        TabView( selection: $tabSelected ){
            FestivalListView(festivalList: FestivalVM)
                .tabItem{
                    Label("Festival", systemImage: "rectangle.and.text.magnifyingglass")
                }.tag(1)
            GameListView(gameList: GameVM)
                .tabItem{
                    Label("Jeux", systemImage: "gamecontroller")
                }.tag(0)
            EditorListView(editorList: EditorVM)
                .tabItem{
                    Label("Editeur", systemImage: "person.crop.square.fill")
                }.tag(2)
            AreaListView(areaList: AreaVM)
                .tabItem{
                Label("Zone", systemImage: "square.grid.2x2")
            }.tag(3)
        }
    }
    
}
