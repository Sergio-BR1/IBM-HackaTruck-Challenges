//
//  ContentView.swift
//  Aula 3-2
//
//  Created by Student09 on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: Modo1View()) {
                    Text("Modo 1 ")
                }
                NavigationLink(destination: Modo1View()) {
                    Text("Modo 1 ")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
