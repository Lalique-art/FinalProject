//
//  Item.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//


import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var name : String
    var details: String
    var image: String
    var price: Float
    var quantity: Int
    var offset: CGFloat
    var isSwiped: Bool
}
