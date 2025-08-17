//
//  MenuItemsOptionView.swift
//  little-lemon-diner
//
//  Created by Tudor Iustin on 16/08/2025.
//

import SwiftUI
import Foundation

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) private var dismiss   // gives us dismiss() action
    @ObservedObject var viewModel: MenuViewViewModel // using the ViewModel
    
    var body: some View {
        NavigationStack {
            List {
                Section("SELECTED CATEGORIES") {
                    ForEach(viewModel.allCategories, id: \.self) { category in
                        HStack {
                            Text(category.rawValue)
                                .fontWeight(viewModel.selectedCategory == category ? .bold : .regular)
                            if viewModel.selectedCategory == category {
                                Spacer()
                                Image(systemName: "checkmark")
                                    .foregroundColor(.accentColor)
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            viewModel.selectedCategory = category
                        }
                    }
                }
                
                Section("SORT BY") {
                    ForEach(SortItems.allCases, id: \.self) { sort in
                        HStack {
                            Text(sort.rawValue)
                                .fontWeight(viewModel.selectedSort == sort ? .bold : .regular)
                            if viewModel.selectedSort == sort {
                                Spacer()
                                Image(systemName: "checkmark")
                                    .foregroundColor(.accentColor)
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            viewModel.selectedSort = sort
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()   // closes the sheet
                    }
                }
            }
            .navigationTitle("Filter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MenuItemsOptionView(viewModel: MenuViewViewModel())
}
