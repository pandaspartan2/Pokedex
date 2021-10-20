//
//  Pokedexls.swift
//  Pokedex
//
//  Created by AMStudent on 10/19/21.
//

import SwiftUI

struct Pokedexls: View {
    
    private let griditem = [GridItem(.flexible()), GridItem(.flexible())]
   
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: griditem, spacing: 20) {
                
                    ForEach(0..<151) { _ in
                        PokemonCard()
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
