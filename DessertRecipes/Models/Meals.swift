//
//  Meals.swift
//  DessertRecipes
//
//  Created by Linhao Hu on 5/17/23.
//

import Foundation
struct Meal: Codable, Identifiable, Hashable{
    let id: String = UUID().uuidString
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
    
    enum CodingKeys: String, CodingKey {
        case id, strMeal, strMealThumb, idMeal
        
    }
}

struct Meals: Codable {
    let meals: [Meal]
}
