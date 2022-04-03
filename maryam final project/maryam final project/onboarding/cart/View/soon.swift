//
//  soon.swift
//  maryam final project
//
//  Created by lolo lolo on 02/04/2022.
//

import SwiftUI

struct soon: View {
    var body: some View {
        ZStack{
        Text("Very Soon contact with your tailor any time! 🌟")
            .font(.headline)
            .frame(width: 400, height: 500, alignment: .top)
        Image("6")
                .resizable()
                .frame(width: 400, height: 450, alignment: .bottom)
    }
}
}

struct soon_Previews: PreviewProvider {
    static var previews: some View {
        soon()
    }
}
