//
//  ContentView.swift
//  DessertRecipes
//
//  Created by Linhao Hu on 5/16/23.
//

import SwiftUI

struct ContentView: View {
    var DessertViewVM = FoodViewViewModel(networking: Network())
    
    var body: some View {
        FoodsGridView(viewModel: DessertViewVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
