//
//  customer file.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

struct customer_file: View {
    @State var username:String=""
    var body: some View {
        ZStack{
      
        VStack(spacing:40){
          
            Text("Welcome Back\(username)!")
                .font(.system(.title, design: .rounded))
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.167, green: 0.152, blue: 0.229))
            Image("coding")
                .resizable()
                .frame(width: 400, height: 500)
           
     TextField("type your user name", text:$username)
                .textFieldStyle(.roundedBorder)
            Spacer()
            
        }.padding()
    }
}
}

       
    

    


struct customer_file_Previews: PreviewProvider {
    static var previews: some View {
        customer_file()
    }
}
