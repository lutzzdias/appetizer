//
//  EmptyState.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 08/12/23.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -35)
            
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is the message passed.")
}
