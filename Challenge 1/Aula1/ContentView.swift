//
//  ContentView.swift
//  Aula1
//
//  Created by Student09 on 16/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao").resizable().aspectRatio(contentMode: .fit).frame(width: 350)

            Text("HackaTruck").foregroundColor( .blue).font(.system(size: 40)).fontWidth(.condensed)
            HStack{
                Text("Maker").foregroundColor(.yellow).font(.system(size: 25))
                Text("Space").foregroundColor(.red).font(.system(size: 25))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
