//
//  User.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 07/12/23.
//

import Foundation

struct User: Codable {
    var id = UUID()
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
