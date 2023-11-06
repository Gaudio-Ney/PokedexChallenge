//
//  PokemonView.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 14/11/20.
//

import SwiftUI

struct PokemonView: View {
    
    // MARK: - Properties
    private(set) var pokemonModel: Pokemon?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(pokemonModel?.name ?? "DEFAULT TEXT")
                .font(.headline)
                .foregroundColor(Color.white)
                .padding()
            HStack {
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .padding()
            }
            .frame(maxWidth: .infinity)

        }
        .background(Color.yellow)
        .cornerRadius(13)
        .shadow(color: Color.black, radius: 6, x: 0, y: 0)
    }
}

