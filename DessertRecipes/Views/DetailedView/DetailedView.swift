//
//  DetailedView.swift
//  DessertRecipes
//
//  Created by Linhao Hu on 5/17/23.
//

import SwiftUI
struct DetailedView: View {
    var dessertId: String
    @State var selectedCategory = "Ingredients"
    @ObservedObject var detailViewModel: DetailedViewViewModel
    
    var body: some View {
        
        ZStack {
            Color(hex: 0x1A1E21).edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(alignment: .center) {
                    Text("\(detailViewModel.recipe.name)")
                        .font(.system(size: 24, weight: .medium,design: .rounded))
                        .foregroundColor(.white)
                        .padding(.bottom)
                    
                    PickerView(selectedCategory: $selectedCategory,labels:  ["Ingredients","Instructions"])
                    
                    if selectedCategory == "Instructions"  {
                        InstructionsStack(instructions: (detailViewModel.recipe.instructions!))
                    }
                    if selectedCategory == "Ingredients"  {
                        IngredientStack(ingredients: (detailViewModel.recipe.ingredients!))
                    }
                    Spacer()
                }
                .onAppear() {
                    detailViewModel.fetchDetails(id: dessertId)
                }
            }
        }
    }
}
