//
//  WelcomeScreenView.swift
//  maryam final project
//
//  Created by lolo lolo on 27/03/2022.
//

import SwiftUI
struct WelcomeScreenView: View {
    var body: some View {
        ZStack{
        Color("bg color").edgesIgnoringSafeArea(.all)
        WelcomeScreenView()
        VStack{
            Spacer()
            Image("welcome")
            Spacer()
            PrimaryButton(title:"Get Started")
            
            
            Text("Sign in")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("PrimaryColor"))
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(50.0)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                .padding(.vertical)
            
            HStack{
                Text("New around here?")
                Text("sign in")
                    .foregroundColor(Color("PrimaryColor"))
            }
        }
        
        .padding()
    }
}
}



struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
