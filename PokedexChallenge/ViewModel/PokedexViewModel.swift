//
//  PokedexViewModel.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 08/03/22.
//

import Foundation

class PokedexViewModel: ObservableObject {
    
    // MARK: - Properties
    @Published var pokemons: [Pokemon] = []
    
}
