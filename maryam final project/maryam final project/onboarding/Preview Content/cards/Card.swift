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
            Card(name:"ramdan dress", imageName:"dress", tailor:"kumas", bio:"long red dress for ramdan"),
            Card(name:"wedding dress", imageName:"green dress", tailor:"tedbaker", bio:"midi green dress"),
            Card(name: "eid dress", imageName: "miu", tailor:"miu miu", bio:"white dress"),
            Card(name:"eid dress", imageName:"miu miu", tailor:"miu miu", bio:"black dress"),
          Card(name:"ramdan dress", imageName:"ramdan dress", tailor:"kumas", bio:"long green dress for ramdan")
        ]
    }
    
}

