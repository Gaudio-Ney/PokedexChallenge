//
//  PokedexModel.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 05/11/20.
//

import Foundation
import SwiftUI

let pokedex: [Pokemon] = load("pokedex.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Não foi possível achar o pokémon, \(filename), in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    }
    catch{
        fatalError("Não foi possível carregar o pokémon, \(filename), in main bundle.")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch{
        fatalError("Não foi atribuir o valor, \(filename), como \(T.self): \(error).")
    }
}
