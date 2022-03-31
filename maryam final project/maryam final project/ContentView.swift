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
        VStack(alignment: .leading) {
            HStack {
                Text("my tailor")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Image("logo")
                    .resizable()
                    
                    .scaledToFit()
                    .frame(width: 120, height: 120, alignment:.center)
                    .clipShape(Circle())
//                Text("my tailor")
//                    .font(.title2)
//                    .fontWeight(.bold)
                
//                Spacer(minLength: 0)
                
//                Group {
//                    Button(action: {}) {
//                        Image(systemName: "cart.fill")
//
//                    }
//                    Button(action: {}) {
//                        Image(systemName: "bell.badge")
//                    }
//                }
//                .font(Font.body.weight(.bold))
//                .foregroundColor(Color("purple"))
            }
//            .padding(.trailing)
            Text("make your outfit today")
                .font(.title3)
            
            ScrollView (.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(1...4, id: \.self) { index in
                        ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)){
                            Image("\(index)")
                                .resizable()
                                .scaledToFill()
                                .frame(width:250)
                            
                            HStack (spacing: 20){
                                Group {
                                    Button(action: {}) {
                                        HStack {
                                            Spacer()
                                            Text("check out")
                                                .padding(.vertical, 10)
                                            Spacer()
                                        }
                                    }
                                    .foregroundColor(Color("black"))
                                    .background(Color("pink"))
                                    .clipShape(Capsule())
                                    
                                    Button(action: {}) {
                                        ZStack {
                                            Circle()
                                                .frame(width: 35, height: 35, alignment: .center)
                                                .foregroundColor(.white)
                                            Image(systemName: "heart")
                                                .font(Font.system(size: 20))
                                                .foregroundColor(Color("pink"))
                                        }
                                    }
                                }
                                .padding(.bottom)
                            }.padding(.horizontal)
                            
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.top, 20)
            .frame(height: 300)
            Spacer(minLength: 0)
        }
        .padding()
        .foregroundColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}





           
   



//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

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
    





