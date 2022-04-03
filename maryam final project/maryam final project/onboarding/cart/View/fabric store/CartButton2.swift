//
//  CartButton2.swift
//  maryam final project
//
//  Created by lolo lolo on 03/04/2022.
//

import SwiftUI

struct CartButton2: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart.fill")
                .padding(.top, 5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

   
struct CartButton2_Previews: PreviewProvider {
    static var previews: some View {
        CartButton2(numberOfProducts: 1)
    }
}
