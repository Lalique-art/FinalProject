//
//  SignInScreenView.swift
//  maryam final project
//
//  Created by lolo lolo on 28/03/2022.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email:String = "" //
    var body: some View {
        ZStack{
            Color("bg color").edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                VStack{
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    SocalLoginButton(image:Image("apple"), text: Text ("Sign in with Apple"))
                    SocalLoginButton(image:Image("google"), text: Text ("Sign in with google")).foregroundColor(Color("PrimaryColor"))
                        .padding(.vertical)
                    Text("want us to contact you?")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("email address", text:$email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        .padding(.vertical)
                    PrimaryButton(title:"email me a sign up link")
                }
                Spacer()
                Divider()
                Spacer()
                Text("this is a safe place")
                Text("Read our terms & Conditions")
                    .foregroundColor(Color("PrimaryColor"))
                Spacer()
                
            } .padding()
        }
    }
}


struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

