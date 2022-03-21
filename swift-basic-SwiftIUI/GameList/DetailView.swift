//
//  DetailView.swift
//  GameList
//
//  Created by yaya on 19.03.2022.
//

import SwiftUI
import AVKit

struct DetailView: View {
    var selectedGame:Games
    
    
    var body: some View {
        VStack{
            MapView(coordinate:selectedGame.coordinateLocation)
                .frame( height: UIScreen.main.bounds.height*0.3)
            
            ImageView(image: Image(selectedGame.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset( y: UIScreen.main.bounds.height * -0.25).padding(.bottom,UIScreen.main.bounds.height * -0.10)
            
            VStack{
                VStack{
                    Text(selectedGame.name)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    
                    Spacer()
                    
                    Text(selectedGame.developer)
                        .font(.title)
                        .foregroundColor(.red)
                    Spacer()
                }
                Spacer()
                Spacer()
                Spacer()
                VStack{
                    Text(selectedGame.genre).bold()
                    Spacer()
                    
                    Text(selectedGame.description).bold()
                }
            }.padding()
                .offset( y: UIScreen.main.bounds.height * -0.15)
            
            
            
            Spacer()
            
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedGame: rdr2)
    }
}
