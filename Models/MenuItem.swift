//
//  MenuItem.swift
//  little-lemon-diner
//
//  Created by Tudor Iustin on 16/08/2025.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var ingredient: [Ingredient] { get set}
    var price: Int { get }
    var menuCategory: MenuCategory { get set }
    var orderCount: Int { get set }
}

struct MenuItem: MenuItemProtocol, Identifiable, Hashable {
    var id = UUID()
    var title: String
    var ingredient: [Ingredient]
    var price: Int
    var menuCategory: MenuCategory
    var orderCount: Int
    
}

