//
//  ja.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct ja: View {
    var body: some View {
        NavigationView{
        VStack{
            HStack{
                NavigationLink(destination: Store()){
                Image(systemName:"house.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color.black)
                
                }
                Text("ra3ialm7al")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
            
                
                NavigationLink(destination: ContentView()){
                Image(systemName:"person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color.black)
                    Spacer()
                
                }
                
            }
            
        }.padding()
        }
        
            
        
        
    }
}

struct ja_Previews: PreviewProvider {
    static var previews: some View {
        ja()
    }
}
