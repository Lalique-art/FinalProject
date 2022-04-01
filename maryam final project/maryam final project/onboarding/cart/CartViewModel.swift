//
//  CartViewModel.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//


import SwiftUI

class CartViewModel: ObservableObject {
    @Published var items = [
        Item(name: "red dress", details: "red - m,s", image: "dress", price: 70, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "miu miu dress", details: "black - M", image: "miu miu", price: 400, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Ted baker Green dress", details: "green - s", image: "green dress", price: 90, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "miu miu white dress", details: "white - m", image: "miu", price: 200.20, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "ramdan green dress", details: "Green - M", image: "ramdan dress", price: 70, quantity: 1, offset: 0, isSwiped: false)
    ]
}

