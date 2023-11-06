//
//  MainPokedexView.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 28/10/20.
//

import SwiftUI
import Alamofire

struct MainPokedexView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: PokedexViewModel = PokedexViewModel()
    
    // MARK: - View Builder
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.pokemons) { pokemon in
                    PokemonView(pokemonModel: pokemon)
                }
            }.navigationTitle(Constants.NavigationTitles.POKEDEX_TITLE)
        }.onAppear {
            PokedexAPIService().getPokemons { result in
                switch result {
                case .failure(let error):
                    print("ERROR: \(error.localizedDescription)")
                case .success(let pokemons):
                    DispatchQueue.main.async {
                        viewModel.pokemons = pokemons ?? []
                    }
                    print(viewModel.pokemons)
                }
            }
        }
    }
    
}
