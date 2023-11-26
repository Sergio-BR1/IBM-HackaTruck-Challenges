//
//  ContentView.swift
//  aula3
//
//  Created by Student09 on 21/11/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
  
        
        TabView {
            HomeView ()
            .badge(2)
            .tabItem {
                Label("Home", systemImage: "house.fill")
                
            }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            PhotosView()
                .tabItem {
                    Label("Photos", systemImage: "photo.artframe")
                }
            
            MessagesView()
                .badge(3)
                .tabItem {
                    Label("Messages", systemImage: "message")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
