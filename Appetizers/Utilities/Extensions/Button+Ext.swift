//
//  View+Ext.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 08/12/23.
//

import SwiftUI

extension Button {
    func standardButtonStyle() -> some View {
        self
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
