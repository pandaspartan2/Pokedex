//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by AMStudent on 10/20/21.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    
    @Published var pokemon = [PokemonData]()
    
    let apiURL = "https://firebasestorage.googleapis.com/v0/b/pokedexam-68b7d.appspot.com/o/PokemonforTemporaryStudentUsage%20-%20Transformed%20by%20Data.Page.json?alt=media&token=f35bf605-5cec-47eb-a35b-5d97ed4fa4e0"
 
    init() {
    fetchPokemonData()
    }
    func fetchPokemonData() {
        guard let url = URL(string: apiURL) else { return }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let cleanData = data?.parseData(removeString: "null,") else { return }
            
            DispatchQueue.main.async {
                do {
                    let pokemon = try
                    JSONDecoder().decode([PokemonData].self, from: cleanData)
                    self.pokemon = pokemon
                } catch {
            print("error msg", error)
                }
        }
        }
        task.resume()
    }

    func detectBackgroundColor(forType type: String) -> UIColor {
        switch type {
        case "fire": return .systemRed
        case "water": return .systemBlue
        case "grass": return .systemGreen
        case "dark": return .systemGray
        case "fairy": return .systemPink
        case "phychic": return .purple
        case "normal": return .systemGray
        case "flying": return .systemTeal
        case "ground": return .brown
        case "electric": return .systemYellow
        default: return .systemIndigo
            
        }
    }
}


extension Data {
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?
            .replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else {
        return nil }
        
        return data
    }
}
