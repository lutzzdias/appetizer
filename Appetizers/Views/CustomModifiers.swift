//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 08/12/23.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
