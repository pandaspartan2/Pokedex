//
//  Pokedexls.swift
//  Pokedex
//
//  Created by AMStudent on 10/19/21.
//

import SwiftUI

struct Pokedexls: View {
    
    private let griditem = [GridItem(.flexible()), GridItem(.flexible())]
   @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: griditem, spacing: 20) {
                
                    ForEach(viewModel.pokemon) { Pokemon in
                        PokemonCard(pokemonData: Pokemon, pokemonViewModel: viewModel)
                    }
                }
            }
            .navigationTitle("POKEDEX")
        }
    }
}
struct Pokedexls_Previews: PreviewProvider {
    static var previews: some View {
        Pokedexls()
    }
}


