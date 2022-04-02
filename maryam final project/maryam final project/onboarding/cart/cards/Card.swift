//
//  Card.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

//MARK: - DATA
struct Card: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let tailor: String
    let bio: String
    let price: Int
    /// Card x position
    var x: CGFloat = 0.0
    /// Card y position
    var y: CGFloat = 0.0
    /// Card rotation angle
    var degree: Double = 0.0
    
    static var data: [Card] {
        [
            Card(name:"long white blouse", imageName:"white shirt", tailor:"bershka", bio:"long blouse", price: 10),
            Card(name:"wedding dress", imageName:"green dress", tailor:"tedbaker", bio:"midi green dress", price: 20),
            Card(name: "eid dress", imageName: "miu", tailor:"miu miu", bio:"white dress", price: 15),
            Card(name:"summer white", imageName:"summer white", tailor:"miu miu", bio:"black dress", price: 400),
            Card(name:"sun flower dress", imageName:"sun flowers dress", tailor:"polo", bio:"mini sport dress", price: 50),
            Card(name:"strap dress", imageName:"strap", tailor:"gukki", bio:"mini dress", price: 60),
            Card(name:"pink summer dress", imageName:"pink summer dress", tailor:"tedbaker", bio:"long black dress", price: 20),
            Card(name: "light green dress", imageName: "light green dress", tailor:"miu miu", bio:"white top", price: 80),
            Card(name:"strapless", imageName:"strapless", tailor:"miu miu", bio:"black&white dress", price: 70),
            Card(name:"green silk dress", imageName:"green silk dress", tailor:"miju", bio:"long pattern dress", price: 15)
        ]
    }
    
}
var likedCards : [Card] = []
    

