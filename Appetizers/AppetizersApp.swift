//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 07/12/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
