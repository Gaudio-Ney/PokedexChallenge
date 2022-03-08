//
//  PokemonModel.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 14/11/20.
//

import SwiftUI

struct PokemonAPIResponse: Codable {
    let pokemons: [Pokemon]?
    
    enum CodingKeys: String, CodingKey {
        case pokemons
    }
}

struct Pokemon: Codable, Identifiable {
    let id: Int?
    let name: String?
    let types: [String]?
    let hp: Int?
    let attack: Int?
    let defense: Int?
    let url: String?
    
    enum CodingKeys: String, CodingKey{
        case id
        case name
        case types = "type"
        case hp = "HP"
        case attack = "Attack"
        case defense = "Defense"
        case url
    }
    
}
