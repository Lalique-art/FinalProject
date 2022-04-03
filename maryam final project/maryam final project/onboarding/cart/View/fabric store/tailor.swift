//
//  tailor.swift
//  maryam final project
//
//  Created by lolo lolo on 03/04/2022.
//

import Foundation
struct Tailor: Identifiable {
    var id = UUID()
    var name:String
    var image:String
    var info: String
    var price: Int
}
var tailorList = [Tailor(name: "mahdi", image: "dress", info: "nchdd", price: 10),
                  Tailor(name: "hamad", image: "product01", info: "cndjdj" , price: 20),
                  Tailor(name: "noura", image: "logo", info: "dndjdj", price: 15),
                  Tailor(name: "ben", image: "pink", info: "mcsos", price: 5),
                  Tailor(name: "khalid", image: "miu", info: "skss", price: 8),
                  Tailor(name: "sarah", image: "miu miu", info: "kdkcm", price: 9)
]
 
