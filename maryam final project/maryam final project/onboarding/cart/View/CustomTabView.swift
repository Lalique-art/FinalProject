//
//  CustomTabView.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

struct CustomTabView: View {
    @StateObject var cartManager: CartManager
    @State var selectedTab = "person.crop.circle"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {

            TabView(selection: $selectedTab) {
               MainView()
                    .tag("house")
                CartView()
                    .tag("cart.fill")
                CardsSection(cartManager: cartManager)
                    .tag("shuffle")
                checkout()
                    .tag("heart.fill")
                customer_file()
                    .tag("person.crop.circle")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            confirm ignoresSafeArea
            .ignoresSafeArea(.all, edges: .bottom)
          
            HStack {
                ForEach(tabs, id:\.self){image in
                  
                    TabButtonView(image: image, selectedTab: $selectedTab)
                            .navigationTitle("home")
                    
                    if image != tabs.last{
                        Spacer(minLength: 0)
                    
                    }

                }
            }
        
        
                
            .padding(.horizontal, 10)
            .background(Color("pink"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .padding(.horizontal)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

var tabs = ["person.crop.circle", "heart.fill", "house", "shuffle", "cart.fill"]
//
//struct BottomTabBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabView(cartManager: <#CartManager#>)
//    }
//}

        
