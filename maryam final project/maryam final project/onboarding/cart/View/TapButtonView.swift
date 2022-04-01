//
//  TapButtonView.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

struct TabButtonView: View {
    var image: String
    @Binding var selectedTab: String
    var body: some View {
        Button(action: {selectedTab = image}) {
            Image(systemName: image)
                .foregroundColor(selectedTab == image ? Color("baby") : .white)
                .padding()
                .font(Font.title2.weight(.bold))
        }
    }
}
