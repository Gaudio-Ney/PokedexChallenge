//
//  PokemonModel.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 14/11/20.
//

import SwiftUI

struct Pokemon: Hashable, Codable, Identifiable{
    var id:Int
    var name:String
    var types: [String]
    var hp:Int
    var attack:Int
    var defense:Int
    
    enum CodingKeys: String, CodingKey{
        case id
        case name
        case types = "type"
        case hp = "HP"
        case attack = "Attack"
        case defense = "Defense"
    }
    
}
