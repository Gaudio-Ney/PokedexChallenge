//
//  ContentView.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 28/10/20.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    var body: some View {
        NavigationView{
            List (pokedex){ pokemon in
                //Navigation(destination: Text(pokemon.name)){
                CardPokemon(pokemon: pokemon)
            //}
            }
        }.navigationTitle(Text ("Pokedex"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
