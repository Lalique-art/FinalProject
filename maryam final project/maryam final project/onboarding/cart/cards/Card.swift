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
    /// Card x position
    var x: CGFloat = 0.0
    /// Card y position
    var y: CGFloat = 0.0
    /// Card rotation angle
    var degree: Double = 0.0
    
    static var data: [Card] {
        [
            Card(name:"long white blouse", imageName:"white shirt", tailor:"bershka", bio:"long blouse"),
            Card(name:"wedding dress", imageName:"green dress", tailor:"tedbaker", bio:"midi green dress"),
            Card(name: "eid dress", imageName: "miu", tailor:"miu miu", bio:"white dress"),
            Card(name:"summer white", imageName:"summer white", tailor:"miu miu", bio:"black dress"),
          Card(name:"sun flower dress", imageName:"sun flowers dress", tailor:"polo", bio:"mini sport dress"),
            Card(name:"strap dress", imageName:"strap", tailor:"gukki", bio:"mini dress"),
            Card(name:"pink summer dress", imageName:"pink summer dress", tailor:"tedbaker", bio:"long black dress"),
            Card(name: "light green dress", imageName: "light green dress", tailor:"miu miu", bio:"white top"),
            Card(name:"strapless", imageName:"strapless", tailor:"miu miu", bio:"black&white dress"),
          Card(name:"green silk dress", imageName:"green silk dress", tailor:"miju", bio:"long pattern dress")
        ]
    }
    
}
var likedCards : [Card] = []
    

