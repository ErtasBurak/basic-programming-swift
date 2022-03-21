//
//  ImageView.swift
//  GameList
//
//  Created by yaya on 19.03.2022.
//

import SwiftUI

struct ImageView: View {
    var image:Image
    var body: some View {
        image
            .resizable()
            .aspectRatio( contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue,lineWidth: 5)).shadow(radius: 12)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("rdr2"))
    }
}
