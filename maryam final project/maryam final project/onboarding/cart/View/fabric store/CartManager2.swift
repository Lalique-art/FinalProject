//
//  CartManager2.swift
//  maryam final project
//
//  Created by lolo lolo on 03/04/2022.
//

import Foundation

class CartManager2: ObservableObject {
    @Published private(set) var tailors:[Tailor] = []
    @Published private(set) var total: Int = 0
    func addToCart(tailor: Tailor){
        tailors.append(tailor)
        total += tailor.price
    }
    func removeFromCart(Thetailor: Tailor) {
        tailors = tailors.filter { $0.id != Thetailor.id}
        total -= Thetailor.price
   
    }
}
