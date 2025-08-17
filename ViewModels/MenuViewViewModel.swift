//
//  MenuViewViewModel.swift
//  little-lemon-diner
//
//  Created by Tudor Iustin on 16/08/2025.
//

import Foundation
import Combine

class MenuViewViewModel: ObservableObject {
    
    // Mock food data using the MenuItem Model
    @Published var foodItems: [MenuItem] = [
        MenuItem(title: "Food 1", ingredient: [.broccoli, .carrot], price: 19, menuCategory: .food, orderCount: 6),
        MenuItem(title: "Food 2", ingredient: [.broccoli, .carrot, .tomatoSauce], price: 8, menuCategory: .food, orderCount: 2),
        MenuItem(title: "Food 3", ingredient: [.broccoli, .carrot, .pasta], price: 12, menuCategory: .food, orderCount: 4),
        MenuItem(title: "Food 4", ingredient: [.spinach, .pasta, .carrot], price: 17, menuCategory: .food, orderCount: 9),
        MenuItem(title: "Food 5", ingredient: [.spinach, .tomatoSauce, .broccoli], price: 10, menuCategory: .food, orderCount: 7),
        MenuItem(title: "Food 6", ingredient: [.pasta, .spinach, .tomatoSauce], price: 13, menuCategory: .food, orderCount: 5),
        MenuItem(title: "Food 7", ingredient: [.carrot, .tomatoSauce, .spinach], price: 11, menuCategory: .food, orderCount: 3),
        MenuItem(title: "Food 8", ingredient: [.broccoli, .spinach], price: 14, menuCategory: .food, orderCount: 8),
        MenuItem(title: "Food 9", ingredient: [.pasta, .carrot, .tomatoSauce], price: 18, menuCategory: .food, orderCount: 10),
        MenuItem(title: "Food 10", ingredient: [.broccoli, .pasta], price: 9, menuCategory: .food, orderCount: 1),
        MenuItem(title: "Food 11", ingredient: [.pasta, .spinach, .carrot], price: 16, menuCategory: .food, orderCount: 11),
        MenuItem(title: "Food 12", ingredient: [.spinach, .broccoli, .tomatoSauce], price: 15, menuCategory: .food, orderCount: 12)
    ]
    
    @Published var drinkItems: [MenuItem] = [
        MenuItem(title: "Drink 1", ingredient: [], price: 19, menuCategory: .drinks, orderCount: 6),
        MenuItem(title: "Drink 2", ingredient: [], price: 8, menuCategory: .drinks, orderCount: 2),
        MenuItem(title: "Drink 3", ingredient: [], price: 12, menuCategory: .drinks, orderCount: 4),
        MenuItem(title: "Drink 4", ingredient: [], price: 17, menuCategory: .drinks, orderCount: 9),
        MenuItem(title: "Drink 5", ingredient: [], price: 10, menuCategory: .drinks, orderCount: 7),
        MenuItem(title: "Drink 6", ingredient: [], price: 13, menuCategory: .drinks, orderCount: 5),
        MenuItem(title: "Drink 7", ingredient: [], price: 11, menuCategory: .drinks, orderCount: 3),
        MenuItem(title: "Drink 8", ingredient: [], price: 14, menuCategory: .drinks, orderCount: 8),
    ]
    
    @Published var dessertItems: [MenuItem] = [
        MenuItem(title: "Dessert 1", ingredient: [], price: 19, menuCategory: .desserts, orderCount: 6),
        MenuItem(title: "Dessert 2", ingredient: [], price: 8, menuCategory: .desserts, orderCount: 2),
        MenuItem(title: "Dessert 3", ingredient: [], price: 12, menuCategory: .desserts, orderCount: 4),
        MenuItem(title: "Dessert 4", ingredient: [], price: 17, menuCategory: .desserts, orderCount: 9),
    ]
}
