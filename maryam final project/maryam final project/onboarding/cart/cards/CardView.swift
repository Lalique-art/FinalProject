//
//  CardView.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

struct CardView: View {
    @State var card: Card
    // MARK: - Drawing Constant
//    let cardGradient = Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.5)])
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(card.imageName)
                .resizable()
                .frame(width: 400, height: 700)
                .clipped()
                
            
       
            VStack {
                
                Spacer()
                HStack {
                    VStack(alignment: .leading){
                        HStack {
                           
                            Text(card.name).font(.largeTitle).fontWeight(.bold)
                            Text(String(card.tailor))
                            
                        }
                        Text(card.bio).font(.body)
                           
                    }
                    Spacer()
                    
                } .padding(5)
                
                
            
                  
            }
            
            .padding(.bottom,200)
            .padding()
            .foregroundColor(.black)
            
            HStack {
                Image("yes")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
                    .opacity(Double(card.x/10 - 1))
                Spacer()
                Image("nope")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
                    .opacity(Double(card.x/10 * -1 - 1))
            }
            
        }
        
        .cornerRadius(8)
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
        .gesture (
            DragGesture()
                .onChanged { value in
                    withAnimation(.default) {
                        card.x = value.translation.width
                        // MARK: - BUG 5
                        card.y = value.translation.height
                        card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                      
                    }
                    
                }
                .onEnded { (value) in
                    withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
                        switch value.translation.width {
                        case 0...100:
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x > 100:
                            card.x = 500; card.degree = 12
                        case (-100)...(-1):
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x < -100:
                            card.x  = -500; card.degree = -12
                        default:
                            card.x = 0; card.y = 0
                        }
                        if card.x > 0 {
                            likedCards.append(card)
                            print(likedCards)
                        }
                    }
                  
                }
        )
    }
}



struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card.data[0])
            .previewLayout(.sizeThatFits)
    }
}
