//
//  Appetizer.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 07/12/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's not good",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers = [ sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer,]
    
    static let orderItemOne = Appetizer(id: 1,
                                           name: "Test Appetizer One",
                                           description: "This is the description for my appetizer. It's not good",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 2,
                                           name: "Test Appetizer Two",
                                           description: "This is the description for my appetizer. It's not good",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemThree = Appetizer(id: 3,
                                           name: "Test Appetizer Three",
                                           description: "This is the description for my appetizer. It's not good",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
