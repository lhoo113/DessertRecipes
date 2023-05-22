//
//  IngredientStack.swift
//  DessertRecipes
//
//  Created by Linhao Hu on 5/16/23.
//

import SwiftUI


struct IngredientStack: View {
    let ingredients: [String:String]
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            ForEach(ingredients.sorted(by: >), id: \.key) { key, value in
                IngredientRow(ingredient: Ingredient(name: key, measurement: value))
                    .background(Color(hex: 0x22282C))
                    .padding(20)
                Divider().overlay(Color.gray.opacity(0.5))
                
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color(.gray), lineWidth: 1)
        )
        .foregroundColor(Color(.gray))
        .background(Color(hex: 0x22282C))
        .padding()
    }
}
