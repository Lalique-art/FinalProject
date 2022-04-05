//
//  FashionAdvice.swift
//  maryam final project
//
//  Created by lolo lolo on 05/04/2022.
//

import SwiftUI

struct FashionAdvice: View {
    @State private var showModal = false
    var body: some View {
        ZStack {
            Image("silk pink")
                .resizable()
            .ignoresSafeArea()
        
        Button(action: {showModal = true}) {
            Text("click me")
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
                .padding(.vertical, 20)
                .padding(.horizontal, 40)
                .background(Color.black.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .offset( y: -100)
            
            ModelView(isShowing: $showModal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .statusBar(hidden: true)
    }
}

struct FashionAdvice_Previews: PreviewProvider {
    static var previews: some View {
        FashionAdvice()
    }
}
