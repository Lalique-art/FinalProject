//
//  ProductCard2.swift
//  maryam final project
//
//  Created by lolo lolo on 03/04/2022.
//

import SwiftUI

struct ProductCard2: View {
    @StateObject var cartManager2: CartManager2
    var tailor: Tailor
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(tailor.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(tailor.name)
                        .bold()
                    Text("\(tailor.price)kd/")
                        .font(.caption)
                    
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
            
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button{
                cartManager2.addToCart(tailor: tailor)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}



//struct ProductCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductCard(product: productList[0])
//
//    }
//}

