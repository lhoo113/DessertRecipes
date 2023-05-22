//
//  FoodViewViewModel.swift
//  DessertRecipes
//
//  Created by Linhao Hu on 5/17/23.
//

import Foundation

final class FoodViewViewModel: ObservableObject {
    private var network: Networking

    init(networking: Networking) {
        network = networking
    }
    @Published var meals: [Meal] = []
    func fetchFoods() {
        network.fetch(FilterEndpoint()) { [self] (result: Result<Meals, APIError>) in
            DispatchQueue.main.async { [self] in
                switch result {
                case .success(let categories):
                    //print(categories)
                    self.meals = categories.meals
                    
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
   
}


struct FilterEndpoint: APIResource {
    var path: String {
        return "/api/json/v1/1/filter.php?c=Dessert"
    }
}
