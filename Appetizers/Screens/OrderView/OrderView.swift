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
