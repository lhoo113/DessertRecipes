//
//  IngredientRow.swift
//  DessertRecipes
//
//  Created by Linhao Hu on 5/16/23.
//

import SwiftUI


struct IngredientRow: View {
    let ingredient: Ingredient
    var body: some View {
        HStack {
            Text(ingredient.name.capitalized)
                .font(.system(size: 18, weight: .regular,design: .rounded))
                .foregroundColor(.white)
            Spacer()
            Text(ingredient.measurement.capitalized)
                .font(.system(size: 18, weight: .regular,design: .rounded))
                .foregroundColor(.white)
                .padding(.trailing)
        }
        
        
    }
}
