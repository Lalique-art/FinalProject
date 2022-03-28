//
//  ContentView.swift
//  maryam final project
//
//  Created by lolo lolo on 26/03/2022.
//

import SwiftUI

struct ContentView: View {
//    @State private var email:String = "" //
    var body: some View {
        VStack {
//            SignInScreenView()
//            WelcomeScreenView()
         overboard()
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
            .background(Color("PrimaryColor"))
            .cornerRadius(50.0)
    }
}

//struct ExtractedView: View {
//    var body: some View {
//        ZStack{
//        Color("bg color").edgesIgnoringSafeArea(.all)
//        WelcomeScreenView()
//        VStack{
//            Spacer()
//            Image("welcome")
//            Spacer()
//            PrimaryButton(title:"Get Started")
//            
//            
//            Text("Sign in")
//                .font(.title3)
//                .fontWeight(.bold)
//                .foregroundColor(Color("PrimaryColor"))
//                .padding()
//                .frame(maxWidth: .infinity)
//                .background(Color.white)
//                .cornerRadius(50.0)
//                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
//                .padding(.vertical)
//            
//            HStack{
//                Text("New around here?")
//                Text("sign in")
//                    .foregroundColor(Color("PrimaryColor"))
//            }
//        }
//        
//        .padding()
//    }
//}
//}

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

//struct SignInScreenView: View {
//    @State private var email:String = "" //
//    var body: some View {
//        ZStack{
//            Color("bg color").edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                Spacer()
//                VStack{
//                    Text("Sign In")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .padding(.bottom, 30)
//                    SocalLoginButton(image:Image("apple"), text: Text ("Sign in with Apple"))
//                    SocalLoginButton(image:Image("google"), text: Text ("Sign in with google")).foregroundColor(Color("PrimaryColor"))
//                        .padding(.vertical)
//                    Text("want us to contact you?")
//                        .foregroundColor(Color.black.opacity(0.4))
//                    
//                    TextField("email address", text:$email)
//                        .font(.title3)
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .background(Color.white)
//                        .cornerRadius(50.0)
//                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
//                        .padding(.vertical)
//                    PrimaryButton(title:"email me a sign up link")
//                }
//                Spacer()
//                Divider()
//                Spacer()
//                Text("this is a safe place")
//                Text("Read our terms & Conditions")
//                    .foregroundColor(Color("PrimaryColor"))
//                Spacer()
//                
//            } .padding()
//        }
//    }
//}
