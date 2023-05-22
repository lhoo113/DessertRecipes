//
//  Recipe.swift
//  DessertRecipes
//
//  Created by Linhao Hu on 5/17/23.
//

import Foundation
struct Recipe: Codable, Hashable  {
    let name: String
    let instructions: [String]?
    let ingredients: [String:String]?
    
}


struct RecipeResponse: Codable {
    let recipe: [Recipe]
    
    enum CodingKeys: String, CodingKey {
        case recipe = "meals"
        
    }
}
