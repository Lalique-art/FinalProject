//
//  MainView.swift
//  maryam final project
//
//  Created by lolo lolo on 01/04/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                   
                    Text("  my tailor")
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
                Text("  tailors and fabric")
                    .font(.headline)
                    
                ScrollView (.horizontal, showsIndicators: false) {
                    LazyHStack {
                        NavigationLink(destination:tailorStore()) {
                            RowView(index: "5")
                                .scaledToFit()
                        }
                        NavigationLink(destination:StoreFabric()) {
                            RowView(index: "1")
                                .scaledToFit()
                        }
                        NavigationLink(destination:soon()) {
                            RowView(index: "6")
                                .scaledToFit()
                        }
                    }
                 
                }
                .padding(.top, 20)
                .frame(height: 300)
                Text(" Hot new !")
                    .font(.headline)
                ScrollView (.horizontal, showsIndicators: false) {
                    LazyHStack {
                        NavigationLink(destination:measurement()) {
                            RowView(index: "2")
                                .scaledToFit()
                        }
                        NavigationLink(destination:StoreFabric()) {
                            RowView(index: "2")
                                .scaledToFit()
                        }
                        NavigationLink(destination:soon()) {
                            RowView(index: "3")
                                .scaledToFit()
                        }
                    }
                   
                    //                    }
                }
                .padding(.top, 20)
                .frame(height: 300)
                Text("  The latest trends")
                    .font(.headline)
                ScrollView (.horizontal, showsIndicators: false) {
                    LazyHStack {
                        NavigationLink(destination:Trends()) {
                            RowView(index: "1")
                                .scaledToFit()
                        }
                        NavigationLink(destination:StoreFabric()) {
                            RowView(index: "2")
                                .scaledToFit()
                        }
                        NavigationLink(destination:soon()) {
                            RowView(index: "3")
                                .scaledToFit()
                        }
                    }
                   
                    //                    }
                }
                .padding(.top, 20)
                .frame(height: 300)

                Spacer(minLength: 100)
               
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct RowView: View {
    @State var index : String
  
    var body: some View {
      
                //                        ForEach(1...4, id: \.self) { index in
                ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)){
                    Image(index)
                        .resizable()
                        .scaledToFill()
                        .frame(width:250)
                    
                    HStack (spacing: 20){
                        Group {
                            
//                            NavigationLink(destination:measurement()) {
                                //                                        Button(action: {}) {
                                HStack {
                                    Spacer()
                                    Text("check out")
                                        .padding(.vertical, 10)
                                    Spacer()
                                }
                                //                                    }
                                .foregroundColor(Color("black"))
                                .background(Color("pink"))
                                .clipShape(Capsule())
//                            }
                            
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
