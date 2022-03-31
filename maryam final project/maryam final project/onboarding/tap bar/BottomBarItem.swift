//
//  BottomBarItem.swift
//  maryam final project
//
//  Created by lolo lolo on 31/03/2022.
//

import SwiftUI

public struct BottomBarItem {
    public let icon: String
    public let title: String
    public let color: Color
    
    public init(icon: String,
                title: String,
                color: Color) {
        self.icon = icon
        self.title = title
        self.color = color
    }
}
