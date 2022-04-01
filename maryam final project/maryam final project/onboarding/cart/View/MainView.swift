//
//  MainView.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
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
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
