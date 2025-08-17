//
//  MenuItemsOptionView.swift
//  little-lemon-diner
//
//  Created by Tudor Iustin on 16/08/2025.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) private var dismiss   // gives us dismiss() action
    
    var body: some View {
        NavigationStack {
            List {
                Section("SELECTED CATEGORIES") {
                    Text("Food")
                    Text("Drinks")
                    Text("Desserts")
                }
                
                Section("SORT BY") {
                    Text("Most popular")
                    Text("Price $ - $$$")
                    Text("A-Z")
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
    MenuItemsOptionView()
}
