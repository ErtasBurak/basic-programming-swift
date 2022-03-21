//
//  ContentView.swift
//  GameList
//
//  Created by yaya on 19.03.2022.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            List(gameList){games in
                NavigationLink(destination: DetailView(selectedGame: games)) {
                    ListRowView(games: games)
                }
            }.navigationTitle(Text("Game List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
