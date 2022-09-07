//
//  ContentView.swift
//  turnar
//
//  Created by Zahraa Jassem on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var email = ""
    @State var number = ""
    @State var home = ""
    var body: some View {
        NavigationView{
        ZStack{
            VStack{
            Image("ne")
                
                    
                
        
            VStack (alignment:.leading){
                
               Text("Name:")
                    .font(.system(size: 30))
                TextField("name", text: $name)
                    .font(.system(size: 20))
                    .background(Color.white)
                Text("Email:")
                    .font(.system(size: 30))
                TextField("email", text: $email)
                    .font(.system(size: 20))
                    .background(Color.white)
                Text("Number:")
                    .font(.system(size: 30))
                TextField("+965", text: $number)
                    .font(.system(size: 20))
                    .background(Color.white)
                Text("Home address:")
                    .font(.system(size: 30))
                TextField("home address", text: $home)
                    .font(.system(size: 20))
                    .background(Color.white)
                    .padding(.bottom,20)
                    NavigationLink(destination: Store()){
                        
                        HStack{
                            Spacer()
                            Text("سجل الان")
                            
                            .font(.system(size: 30))
                            .padding(9)
                            .background(.green)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                            Spacer()
                        }
                }
                    
            }
            }.padding()
            
        }.navigationBarHidden(true)
        
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
