//
//  soon.swift
//  maryam final project
//
//  Created by lolo lolo on 02/04/2022.
//

import SwiftUI

struct soon: View {
    var body: some View {
        ZStack {
            Text("Very Soon contact with your tailor any time!")
            padding(.bottom)
        
      Image("6")
            .resizable()
            .frame(width: 400, height: 350)
            .scaledToFit()
    }
}
}

struct soon_Previews: PreviewProvider {
    static var previews: some View {
        soon()
    }
}
