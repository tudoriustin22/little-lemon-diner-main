//
//  MenuItemDetailsView.swift
//  little-lemon-diner
//
//  Created by Tudor Iustin on 16/08/2025.
//

import SwiftUI

struct MainItemDetailsView: View {
    var body: some View {
        VStack {
            Text("Food 5")
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
            Text("10.99")
                .padding(.bottom)
            
            // Order Number Element
            Text("Ordered: ")
                .font(.system(size: 20))
                .bold()
            Text("1,000")
                .padding(.bottom)
            
            // Ingredients
            Text("Ingredients: ")
                .font(.system(size: 20))
                .bold()
            Text("Spinach \n Broccoli \n Carrot \n Pasta")
                .padding(.bottom)
        }
    }
}

#Preview {
    MainItemDetailsView()
}
