//
//  PokemonView.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 14/11/20.
//

import SwiftUI

struct PokemonView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("Pikachu")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                HStack {
                    Text("Type: shock")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 20)
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding()
                }
            }
        }
        .background(Color.yellow)
        .cornerRadius(13)
        .shadow(color: Color.yellow, radius: 6, x: 0, y: 0)
    }
}

