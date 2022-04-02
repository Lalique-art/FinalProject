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
var productList = [Product(name: "cotton", image: "product01", price: 5),
                   Product(name: "cotton", image: "product02", price: 5),
                   Product(name: "cotton", image: "product03", price: 5),
                   Product(name: "cotton", image: "product04", price: 5),
                   Product(name: "cotton", image: "product05", price: 5),
                   Product(name: "cotton", image: "product06", price: 5),
]
 
