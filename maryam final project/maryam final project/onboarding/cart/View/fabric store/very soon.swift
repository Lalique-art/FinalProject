//
//  very soon.swift
//  maryam final project
//
//  Created by lolo lolo on 05/04/2022.
//

import SwiftUI

struct very_soon: View {
    var body: some View {
        ZStack{
        Text("stay tuned")
            .font(.headline)
            .frame(width: 400, height: 500, alignment: .top)
        Image("soon")
                .resizable()
                .frame(width: 400, height: 450, alignment: .bottom)
    }
}
}

struct very_soon_Previews: PreviewProvider {
    static var previews: some View {
        very_soon()
    }
}
