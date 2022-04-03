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
var tailorList = [Tailor(name: "mahdi", image:"tailor01", info: "available", price: 10),
                  Tailor(name: "hamad", image:"tailor02", info: "busy" , price: 20),
                  Tailor(name: "noura", image:"tailor03", info: "available", price: 15),
                  Tailor(name: "Ahmed & nour",image:"tailor04", info: "busy", price: 5),
                  Tailor(name: "sarah", image:"tailor05", info: "busy", price: 8),
                  Tailor(name: "khalid", image:"tailor06", info: "available", price: 9),
                  Tailor(name: "lily", image:"tailor07", info: "busy" , price: 20),
                  Tailor(name: "ben", image:"tailor08", info: "available", price: 15),
                  Tailor(name: "keth",image:"tailor09", info: "busy", price: 5),
                  Tailor(name: "jungkook", image:"tailor10", info: "busy", price: 8),
                  Tailor(name: "khan", image:"tailor11", info: "available", price: 9),
                  Tailor(name: "ahmed", image:"tailor12", info: "busy" , price: 20),
                  Tailor(name: "steve", image:"tailor13", info: "available", price: 15),
                  
]
 
