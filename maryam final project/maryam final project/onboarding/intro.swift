//
//  intro.swift
//  maryam final project
//
//  Created by lolo lolo on 30/03/2022.
//

import SwiftUI

struct Intro: Identifiable{
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var description: String
    var img: String
    var color: Color
    var offset: CGSize = .zero
}

