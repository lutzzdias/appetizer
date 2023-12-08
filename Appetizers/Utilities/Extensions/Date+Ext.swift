//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 08/12/23.
//

import Foundation

extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year,
                              value: -18,
                              to: Date())!
    }
    
    var oneHudredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year,
                              value: -110,
                              to: Date())!
    }
}
