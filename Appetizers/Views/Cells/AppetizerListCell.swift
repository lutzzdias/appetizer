//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 07/12/23.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .standardImageStyle()
            } placeholder: {
                Image("food-placeholder")
                    .standardImageStyle()
                    
            }

            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
