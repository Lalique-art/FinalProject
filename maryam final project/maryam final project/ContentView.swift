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
//        VStack {
////            SignInScreenView()
////            WelcomeScreenView()
//         Home()
//
//        }
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
            .padding()
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

let items: [BottomBarItem] = [
    BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
    BottomBarItem(icon: "heart", title: "Likes", color: .pink),
    BottomBarItem(icon: "magnifyingglass", title: "Search", color: .orange),
    BottomBarItem(icon: "person.fill", title: "Profile", color: .blue)
]

struct BasicView: View {
    let item: BottomBarItem
    var detailText: String {
        "\(item.title) Detail"
    }
    
    var destination: some View {
        Text(detailText)
            .navigationBarTitle(Text(detailText))
    }
    
    var navigateButton: some View {
        NavigationLink(destination: destination) {
            ZStack {
                Rectangle()
                    .fill(item.color)
                    .cornerRadius(8)
                    .frame(height: 52)
                    .padding(.horizontal)
                
                Text("Navigate")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
    }
    
    func openTwitter() {
        guard let url = URL(string: "https://twitter.com/smartvipere75") else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
        }
    }
}

struct ContentView : View {
    @State private var selectedIndex: Int = 0
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }
    
    var body: some View {
        NavigationView {
            VStack {
                //change the navbar color
                Rectangle()
                    .foregroundColor(selectedItem.color)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 0)
                    .navigationBarHidden(false)
                
                BasicView(item: selectedItem)
                    .navigationBarTitle(Text(selectedItem.title))
                BottomBar(selectedIndex: $selectedIndex, items: items)
            }
        }
    }
}



