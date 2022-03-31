//
//  ContentView.swift
//  maryam final project
//
//  Created by lolo lolo on 26/03/2022.
//

import SwiftUI

struct ContentView: View {
@State var done = false
    var body: some View {
        if done{
            WelcomeScreenView()
            
            
        }else{
            Home(done: $done)
        }

}
}
           
   



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton : View {
    var title:String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50.0)
           
    }
}


struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack{
            image
//            Image("apple")
                .padding(.horizontal)
            Spacer()
            text
//            Text("sign in with apple")
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
    }
}
    





