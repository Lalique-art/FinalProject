//
//  tailorStore.swift
//  maryam final project
//
//  Created by lolo lolo on 03/04/2022.
//

import SwiftUI

struct tailorStore: View {
    @StateObject var cartManager2 = CartManager2()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(tailorList, id:\.id) { Tailor in
                        ProductCard2(cartManager2: cartManager2, tailor: Tailor)
                         
                           
                    }
                }
                .padding()
            }
        }
        .navigationTitle(Text("fabric shop"))
        .toolbar {
            NavigationLink{
                CartView()
                    .environmentObject(cartManager2)
            } label: {
                CartButton(numberOfProducts: cartManager2.tailors.count)
            }
          
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationTitle(Text("tailor shop"))
        .toolbar {
            NavigationLink{
                soon()
                    .environmentObject(cartManager2)
            } label: {
                TextButton(numberOfProducts: cartManager2.tailors.count)
            }
          
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

    


struct tailorStore_Previews: PreviewProvider {
    static var previews: some View {
        tailorStore()
    }
}
