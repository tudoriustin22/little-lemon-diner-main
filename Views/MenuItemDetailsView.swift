//
//  MenuItemDetailsView.swift
//  little-lemon-diner
//
//  Created by Tudor Iustin on 16/08/2025.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            Text(item.title)
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.leading)
                .padding(.top)
            
            Image("Little Lemon logo")
                .resizable()
                .scaledToFit()
            
            // Price Element
            Text("Price: ")
                .font(.system(size: 20))
                .bold()
            Text("\(item.price)")
                .padding(.bottom)
            
            // Order Number Element
            Text("Ordered: ")
                .font(.system(size: 20))
                .bold()
            Text("\(item.orderCount)")
                .padding(.bottom)
            
            // Ingredients
            Text("Ingredients: ")
                .font(.system(size: 20))
                .bold()
            Text(item.ingredient.map { $0.rawValue }.joined(separator: "\n"))
                .padding(.bottom)
        }
    }
}

#Preview {
    let sampleItem = MenuItem(
        title: "Food 5",
        ingredient: [.spinach, .broccoli, .carrot, .pasta],
        price: 10,
        menuCategory: .food,
        orderCount: 1000
    )
    MenuItemDetailsView(item: sampleItem)
}
