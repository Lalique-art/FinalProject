//
//  ModelView.swift
//  maryam final project
//
//  Created by lolo lolo on 05/04/2022.
//

import SwiftUI

struct ModelView: View {
    
    @Binding var isShowing: Bool
    @State private var isDragging = false
    
    @State private var curHeight: CGFloat = 400
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    
    let startOpacity: Double = 0.4
    let endOpacity: Double = 0.8
    
    var dragpercentage: Double {
        let res = Double((curHeight - minHeight) / (maxHeight - minHeight))
        return max(0, min(1,res))
    }
    
    var body: some View {
        ZStack(alignment: .bottom){
            if isShowing{
                Color.black
                    .opacity(startOpacity + (endOpacity - startOpacity) * dragpercentage)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
              fashionView
                .transition(.move(edge: .bottom))
            }
           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
    var fashionView: some View {
        VStack{
           
                
            
            ZStack{
                Capsule()
                    .frame(width: 40, height: 6)
            }
            
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.0001))
            .gesture(dragGesture)
            ZStack{
                VStack{
                Text("\"you look great today.\"")
                    .font(.system(size: 20, weight: .bold))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 10)
                Text("maryam")
                    .font(.system(size: 20,weight: .bold))
            }
            
            .padding(.horizontal, 30)
        }
        .frame(maxHeight: .infinity)
        .padding(.bottom, 35)
    }
        .frame(height: curHeight)
        .frame(maxWidth: .infinity)
        .background(
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                Rectangle()
                    .frame(height: curHeight / 2)
            }
                .foregroundColor(.white)
            )
        .animation(isDragging ? nil : .easeInOut(duration: 0.45))
    }
    @State private var prevDragTranslation = CGSize.zero
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged {val in
                if !isDragging{
                    isDragging = true
                }
                let dragAmount = val.translation.height - prevDragTranslation.height
                if curHeight > maxHeight || curHeight < minHeight{
                    curHeight -= dragAmount / 6
                }else{
                    curHeight -= dragAmount
                }
                prevDragTranslation = val.translation
            }
            .onEnded { val in
                prevDragTranslation = .zero
                isDragging = false
                if curHeight > maxHeight {
                    curHeight = maxHeight
                }
                else if  curHeight < maxHeight {
                    curHeight = minHeight
                }
                
            }
    }
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(isShowing: .constant(true))
    }
}
