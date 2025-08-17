//
//  MenuItemsView.swift
//  little-lemon-diner
//
//  Created by Tudor Iustin on 16/08/2025.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject private var viewModel = MenuViewViewModel()
    @State private var showMenu = false // variable ot control the state of menu
    @State private var selectedItem: MenuItem? = nil
    let columns = Array(repeating: GridItem(.flexible(minimum: 1), spacing: 1), count: 3)
    
    var body: some View {
        VStack {
            
            // Menu Bar
            HStack {
                Text("Menu")
                    .font(.system(size: 35))
                    .bold()
                    .padding(.leading)
                    .padding(.bottom, 8)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 25))
                    .frame(alignment: .topTrailing)
                    .padding(.trailing)
                    .foregroundStyle(.blue)
                    .onTapGesture {
                        showMenu = true // toggles the menu variable to showing state
                    }
                        
            }
            .background(.gray.opacity(0.01))
            .padding(.bottom)
            
            // Sheet that toggles the OptionView
            .sheet(isPresented: $showMenu) {
                MenuItemsOptionView(viewModel: viewModel)
                
            }
            
            // Page Content
            ScrollView {
                Text(viewModel.selectedCategory.rawValue)
                    .font(.system(size: 25))
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.displayedItems, id: \.self) { item in
                        VStack {
                            Rectangle()
                                .frame(width: 110, height: 80)
                            Text(item.title)
                        }
                        .onTapGesture {
                            selectedItem = item
                        }
                    }
                }
                .padding(.horizontal, 5)
                .padding(.bottom, 30)
            }
            .sheet(item: $selectedItem) { item in
                MenuItemDetailsView(item: item)
            }
        }
        
    }
}

#Preview {
    MenuItemsView()
}
