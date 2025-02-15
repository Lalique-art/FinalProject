//
//  measurement.swift
//  maryam final project
//
//  Created by lolo lolo on 02/04/2022.
//

import SwiftUI

struct measurement: View {
    @State var size = ""
    @State var enterSize = ""
    @State var name = "logo2"
    @State var hip = ""
    @State var waist = ""
    @State var bust = ""
    @State var shape = "what's my body type"
    @State var advice = ""
    @State var gender = ""
    var body: some View {
       
            
        ZStack{
            Image("so pink")
                   .resizable()
                   .frame(width: 400, height: 600)
                   .clipShape(RoundedRectangle(cornerRadius: 20))
                   .scaledToFit()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Picker("what is you gender?",selection:$gender){
                    Text("female").tag(0)
                    Text("male").tag(0)
                    
                }
                .pickerStyle(.segmented)
                .padding()
               
                Image(name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230, height: 250)
                
                TextField("hip", text: $hip)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 350, height: 10)
                    .padding()
//                    .background(.black)
                    .foregroundColor(.black)
              
                TextField("waist", text: $waist)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 350, height: 10)
                    .padding()
//                    .background(.white)
                    .foregroundColor(.black)
                TextField("bust", text: $bust)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 350, height: 10)
                    .padding()
//                    .background(.white)
                    .foregroundColor(.black)
//                  Spacer()
                    .padding()
                
                Text(advice)
                    .font(.headline)
                    .frame(width: 250, height: 190)
               
                    
                Text(shape)
                    .foregroundColor(.white)
                    .frame(width: 400, height: 60)
                    .background(Color("pink"))
                    .clipShape(RoundedRectangle(cornerRadius: 35))
                
//                Text(shape)
//                foregroundColor(Color("pink"))
                    .onTapGesture {
                        if (bust >= hip && bust >= waist){
                        name = "rectangle"
                            shape = "rectangle"
                            advice = "fitted,flare defind waist dresses look amazing on you 🌟"
                        } else  if (hip >= bust && hip >= waist){
                            name = "hourglass"
                            shape = "hourglass"
                            advice = "fitted & tapered waist detailed dresses look beautiful on you 🌟 "
                        }
                        else  if (waist >= bust && waist >= hip){
                            name = "circle"
                            shape = "circle"
                            advice = "A scoop or v-neck top is universally flattering and especially great for a round shaped body 🌟"
                        }
                    }
//                Spacer()
               
                
                
                  
            }
            .foregroundColor(.white)
        }
    }
}



struct measurement_Previews: PreviewProvider {
    static var previews: some View {
        measurement()
    }
}
