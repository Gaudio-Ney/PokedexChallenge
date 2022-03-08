//
//  MainPokedexView.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 28/10/20.
//

import SwiftUI
import Alamofire

struct MainPokedexView: View {
    
    private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(0..<100) { _ in
                        PokemonView()
                    }
                }
            }.navigationTitle("Pokedex")
        }
    }
    
}
