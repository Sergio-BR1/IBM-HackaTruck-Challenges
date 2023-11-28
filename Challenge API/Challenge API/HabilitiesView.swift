//
//  HabilitiesView.swift
//  Challenge API
//
//  Created by Student09 on 28/11/23.
//

import SwiftUI

struct HabilitiesView: View {
    let bgGradient = LinearGradient(colors: [.gray, .red, .black], startPoint: . top, endPoint: .bottom)
    var x: Abilities
    var body: some View {
        ZStack {
            bgGradient
            VStack(spacing: 120){
                AsyncImage(url: URL(string: x.displayIcon!)) { image in
                    
                    image
                        .resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50)
                    
                } placeholder: {
                    ProgressView()
                }
                Text(x.description!).frame(width: 330).foregroundColor(.white)
            }
        } .ignoresSafeArea()
    }
}

struct HabilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        HabilitiesView(x: Abilities(slot: "Grenade", displayName: "Mosh Pit", description: "EQUIP Mosh. FIRE to throw Mosh like a grenade. ALT FIRE to lob. Upon landing Mosh duplicates across a large area that deals a small amount of damage over time then after a short delay explodes.", displayIcon: "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/grenade/displayicon.png"))
    }
}
