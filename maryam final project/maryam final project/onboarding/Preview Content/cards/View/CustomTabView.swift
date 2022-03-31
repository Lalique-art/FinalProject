//
//  CustomTabView.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

struct CustomTabView: View {
    @State var selectedTab = "person.crop.circle"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {

            TabView(selection: $selectedTab) {
                MainView()
                    .tag("house")
                test()
                    .tag("heart.fill")
             CardsSection()
                    .tag("shuffle")
                checkout()
                    .tag("cart.fill")
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

struct BottomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

        
