//
//  OrderView.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 07/12/23.
//

import SwiftUI

struct OrderView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(MockData.orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
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
}

#Preview {
    OrderView()
}
