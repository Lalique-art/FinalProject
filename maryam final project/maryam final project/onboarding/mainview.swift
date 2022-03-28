//
//  mainview.swift
//  maryam final project
//
//  Created by lolo lolo on 28/03/2022.
//

import SwiftUI

struct mainview: View {
    @AppStorage("currentPage") var currentPage = 1
    var totalPages = 3
    var body: some View {
        ZStack{
            
            if currentPage == 1{
                WalkthroughScreen(image: "shop png", title: "My tailor", detail: "", bgColor: Color("baby blue"))
                    .transition(.scale)
            }
            if currentPage == 2 {
                WalkthroughScreen(image: "talk png", title: "easy orders,easy contacts", detail: "", bgColor: Color("primary"))
                    .transition(.scale)
            }
            if currentPage == 3{
            WalkthroughScreen(image: "money png", title: "east money transfering", detail: "", bgColor: Color("baby blue"))
                    .transition(.scale)
            }
           
        }
       
    }
}

struct mainview_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
    }
}
struct Home:View {
    
    var body: some View{
        Text("Welcome to my tailor!")
            .font(.title)
            .fontWeight(.heavy)
    }
}
struct WalkthroughScreen: View {
    var image: String
    var title: String
    var detail: String
    var bgColor: Color
    @AppStorage("currentPage")var currentPage = 1
//    var totalPages = 3
    
    var body: some View{
        ZStack{
            VStack(spacing: 20){
                HStack{
                 
                    if currentPage == 1{
                        Text("hello")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .kerning(1.4)
                    }
                    else{
                        Button(action: {
                            withAnimation(.easeInOut){
                                currentPage -= 1
                            }
                        },
                       label:{
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                                .padding(.horizontal)
                                .background(Color.black.opacity(0.4))
                                .cornerRadius(10)
                        } )
                    }
                    Spacer()
                    Button(action: {
                        withAnimation(.easeInOut){
                            currentPage = 4
                        }
                    }, label:{Text("skip")
                            .fontWeight(.semibold)
                            .kerning(1.2)
                    })
                }
                .foregroundColor(.black)
                .padding()
                
                Spacer(minLength: 0)
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode:.fit )
            
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top)
                Text("tailoring has never been easier")
                    .fontWeight(.semibold)
                    .kerning(1.3)
                    .multilineTextAlignment(.center)
                
                
                
                Spacer(minLength: 120)
            }
            .background(bgColor.ignoresSafeArea())
        }
        .overlay(
            Button(action: {
                withAnimation(.easeOut){
                    if currentPage <= totelPages{
                        currentPage += 1
                    }
                    else{
                        currentPage = 1
                    }
                }
            }, label: {
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(
                        ZStack{
                            Circle()
                                .stroke(Color.black.opacity(0.04),lineWidth: 4)
                               
                            Circle()
                                .trim(from: 0, to: 0.3)
                                .stroke(Color.white,lineWidth: 4)
                                .rotationEffect(.init(degrees: -90))
                        }
                            .padding(-15)
                    )
            })
                .padding(.bottom,20)
            ,alignment: .bottom
        )
    }
}

