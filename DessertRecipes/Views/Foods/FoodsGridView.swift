//
//  FoodGridView.swift
//  DessertRecipes
//
//  Created by Linhao Hu on 5/18/23.
//


import SwiftUI

struct FoodsGridView: View {

    @ObservedObject var viewModel: FoodViewViewModel
    var detailVm = DetailedViewViewModel(networking: Network())
    let gridItem = [GridItem(.fixed(170), spacing: 20),GridItem(.fixed(170), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: 0x1A1E21).edgesIgnoringSafeArea(.all)
            ScrollView {
                LazyVGrid(columns: gridItem) {
                    ForEach(viewModel.meals, id: \.self) { meal in
                        NavigationLink(destination: DetailedView(dessertId: meal.idMeal, detailViewModel: detailVm)) {
                            CategoryCell(name: meal.strMeal, sizing: 120)
                        }
                    }
                }
            }
        }
            .onAppear(){
                viewModel.fetchFoods()}
        .navigationTitle("Dessert")
        .navigationBarTitleDisplayMode(.inline)
    }
        .accentColor(.white)
        
    }
    
}





struct FoodsGridView_Previews: PreviewProvider {
    static var previews: some View {
        let DessertViewVM = FoodViewViewModel(networking: Network())
        
        FoodsGridView(viewModel: DessertViewVM)
    }
}
