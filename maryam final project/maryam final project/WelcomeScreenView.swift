import SwiftUI
struct WelcomeScreenView: View {
    @StateObject var cartManager = CartManager()
    var body: some View {
        NavigationView {
            ZStack{
            Color("bg color").edgesIgnoringSafeArea(.all)
//            WelcomeScreenView()
            VStack{
                Spacer()
                Image("welcome")
                Spacer()
                PrimaryButton(title:"Get Started")
                
                
                NavigationLink(destination:SignInScreenView(cartManager: cartManager).navigationBarHidden(true),label: {
                    Text("Sign in")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        .padding(.vertical)
                })
                    .navigationBarHidden(true)
                
                HStack{
                    Text("New around here?")
                    Text("sign in")
                        .foregroundColor(Color("PrimaryColor"))
                }
            }
            
            .padding()
            }
        }
}
}

//
//
//struct WelcomeScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        WelcomeScreenView()
//    }
//}
//
