//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 07/12/23.
//

import SwiftUI

@MainActor
final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                do { isLoading = false }
            } catch {
                alertItem = AlertContext.unableToComplete
            }
        }
    }
}
