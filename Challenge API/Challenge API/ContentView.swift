//
//  ContentView.swift
//  Challenge API
//
//  Created by Student09 on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    let bgGradient = LinearGradient(colors: [.gray, .red, .black], startPoint: . top, endPoint: .bottom)
    @StateObject var VM = ViewModel()
    var body: some View {
        
        NavigationStack {

            ZStack {
                bgGradient
                ScrollView{
                    VStack {
                        
                        ForEach(VM.personagens, id: \.uuid) { char in
                            Spacer()
                            Spacer()
                            Text(char.displayName!).foregroundColor(.white).font(.system(size: 20)).fontWeight(.bold).padding(.top, 50)
                            
                            if(char.bustPortrait != nil){
                                AsyncImage(url: URL(string: char.bustPortrait!)) { image in
                                    
                                    image
                                        .resizable().aspectRatio(contentMode: .fit).frame(width: 400, height: 500)
                                    
                                } placeholder: {
                                    ProgressView()
                                }
                            }
                            
                            Text(char.description!).foregroundColor(.white).frame(width: 350)
                            Spacer()
                            Spacer()
                            VStack {
                                Text("Abilites").foregroundColor(.white).font(.system(size: 17)).fontWeight(.bold)
                                ScrollView(.horizontal) {
                                    HStack (spacing: 40){
                                        ForEach (char.abilities!, id: \.slot){ a in
                                            VStack {
                                                Text(a.displayName!).foregroundColor(.white)
                                                if(a.displayIcon != nil) {
                                                    NavigationLink(destination: HabilitiesView(x: a)) {
                                                        AsyncImage(url: URL(string: a.displayIcon!)) { image in
                                                            
                                                            image
                                                                .resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50)
                                                            
                                                        } placeholder: {
                                                            ProgressView()
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }.padding(.leading, 28)
                                }
                            }
                            
                        }
                       
                    } .padding()
                }
            } .ignoresSafeArea()
        }.onAppear() {
            VM.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
