//
//  CardPokemon.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 14/11/20.
//

import SwiftUI

struct CardPokemon: View {
    
    var pokemon : Pokemon
    
    var body: some View {
        HStack{
            Image("\(pokemon.id)")
            VStack{
                Text(pokemon.name)
                    .font(.title)
            }
        }
    }
}

struct CardPokemon_Previews: PreviewProvider {
    static var previews: some View {
        CardPokemon(pokemon: pokedex[0])
    }
}
