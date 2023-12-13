//
//  PokemonDetailView.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 13/12/23.
//

import SwiftUI

struct PokemonDetailView: View {
    
    // MARK: Properties
    var pokemonDetail: PokemonDetailModel
    
    var body: some View {
        VStack(alignment: .center) {
            Text(pokemonDetail.name.capitalized)
            AsyncImage(url: URL(string: pokemonDetail.sprites.frontDefault ?? ""))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
