//
//  timesNBA.swift
//  Challenge API
//
//  Created by Student09 on 27/11/23.
//

import Foundation

struct API : Decodable {
    var data : [personagem]
}


// array, id: \.uuid
struct personagem: Decodable {
    var uuid: String?
    var displayName: String?
    var description: String?
    var bustPortrait: String?
    var role: Role?
    var abilities: [Abilities]?
    
}

struct Role: Decodable {
    var displayName: String?
}


struct Abilities: Decodable {
    var slot : String?
    var displayName : String?
    var description: String?
    var displayIcon: String?
    
}
