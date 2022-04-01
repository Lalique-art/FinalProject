//
//  CardSection.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//



import SwiftUI

struct CardsSection: View {
    var body: some View {
        ZStack{
            ForEach(Card.data.reversed()) { card in
                CardView(card: card)
            }
        }
        .padding(8)
        
        .zIndex(1.0)
    }
}

struct CardsSection_Previews: PreviewProvider {
    static var previews: some View {
        CardsSection()
    }
}
