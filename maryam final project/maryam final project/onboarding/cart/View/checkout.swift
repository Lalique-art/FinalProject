//
//  checkout.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

struct checkout: View {
    var body: some View {
        List(likedCards) { i in
            HStack{
                Image(i.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text(i.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    
            }
            
        }
        
    }
}

struct checkout_Previews: PreviewProvider {
    static var previews: some View {
        checkout()
    }
}
