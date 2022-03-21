//
//  ListRowView.swift
//  GameList
//
//  Created by yaya on 20.03.2022.
//

import SwiftUI

struct ListRowView: View {
    var games:Games
    var body: some View {
        HStack{
            Image(games.imageName)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 150, height: 100, alignment: .leading)
                .clipShape(Circle())
            Spacer()
            VStack{
                Text(games.name).font(.title).bold()
                Text(games.developer).font(.title)
            }
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(games: rdr2)
    }
}
