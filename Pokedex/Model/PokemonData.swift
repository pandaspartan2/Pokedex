//
//  PokemonData.swift
//  Pokedex
//
//  Created by AMStudent on 10/20/21.
//

import Foundation

struct PokemonData: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let weight: Float
    let height: Float
    let description: String
    let attack: Float
    let defense: Float
}

//let mockData: [PokemonData] = [
//    .init(id: 0, name: "Bulbasaur", type: "poison", weight: 15, height: 80, description: "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.", attack: 30, defense: 18)
//
//]
