//
//  OrderView.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 07/12/23.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItem)
                    }
                    .listStyle(.plain)
                    
                    Spacer()
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(calculatePrice(), specifier: "%.2f") - Place Order")
                    }.padding(.bottom, 25)
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("Order")
        }
    }
    
    func calculatePrice() -> Double {
        var price = 0.0
        
        MockData.orderItems.forEach { ap in
            price += ap.price
        }
        
        return price
    }
    
    func deleteItem(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
