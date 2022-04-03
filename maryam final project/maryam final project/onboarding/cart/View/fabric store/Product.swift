//
//  Product.swift
//  maryam final project
//
//  Created by lolo lolo on 02/04/2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name:String
    var image:String
    var price: Int
}
var productList = [Product(name: "cotton", image: "cotton", price: 5),
                   Product(name: "cotton", image: "chiffon", price: 10),
                   Product(name: "cotton", image: "linen", price: 20),
                   Product(name: "cotton", image: "leather", price: 15),
                   Product(name: "cotton", image: "silk", price: 5),
                   Product(name: "cotton", image: "silk pink", price: 12),
                   Product(name: "cotton", image: "valvet", price: 5),
                   Product(name: "cotton", image: "cotton", price: 12),
                   Product(name: "cotton", image: "silk", price: 5),
                   Product(name: "cotton", image: "chiffon", price: 12)
]
 
