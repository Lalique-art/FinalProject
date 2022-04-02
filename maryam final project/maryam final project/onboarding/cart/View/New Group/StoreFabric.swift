//
//  StoreFabric.swift
//  maryam final project
//
//  Created by lolo lolo on 02/04/2022.
//

import SwiftUI

struct StoreFabric: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id:\.id) { product in
                        ProductCard(cartManager: cartManager, product: product)
                           
                    }
                }
                .padding()
            }
        }
        .navigationTitle(Text("fabric shop"))
        .toolbar {
            NavigationLink{
                CartView()
                    .environmentObject(cartManager)
            } label: {
                CartButton(numberOfProducts: cartManager.products.count)
            }
          
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct StoreFabric_Previews: PreviewProvider {
    static var previews: some View {
        StoreFabric()
    }
}
