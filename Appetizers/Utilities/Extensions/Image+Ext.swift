//
//  Image+Ext.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 08/12/23.
//

import SwiftUI

extension Image {
    func standardImageStyle() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }
}
