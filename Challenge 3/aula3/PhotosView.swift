//
//  PhotosView.swift
//  aula3
//
//  Created by Student09 on 21/11/23.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
            ScrollView {
                VStack (spacing: 30) {
                    Image(systemName: "hare.fill").resizable().frame(width: 150, height: 150)
                    Image(systemName: "tortoise.fill").resizable().frame(width: 150, height: 150)
                    Image(systemName: "pawprint.fill").resizable().frame(width: 150, height: 150)
                    Image(systemName: "ant.fill").resizable().frame(width: 150, height: 150)
                    Image(systemName: "fish.fill").resizable().frame(width: 150, height: 150)
                    Image(systemName: "bird.fill").resizable().frame(width: 150, height: 150)
                }
            }
    }
}
struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
