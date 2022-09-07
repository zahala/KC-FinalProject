//
//  Store.swift
//  turnar
//
//  Created by Zahraa Jassem on 02/09/2022.
//

import SwiftUI

struct Store: View {
    var body: some View {
        
    
        VStack {
                Text("*store:                                ")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.green)
                    Divider()
            
            ScrollView{
                
            
            HStack{
                NavigationLink(destination: ja()){
                Image("ja")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 165, height: 165)
                }
                NavigationLink(destination: mo()){
                Image("mo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 165, height: 165)
                }
            }
            HStack{
                NavigationLink(destination: ka()){
                Image("ka")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 165, height: 165)
                }
                NavigationLink(destination: ba()){
                Image("ba")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 165, height: 165)
                }
            }
            HStack{
                NavigationLink(destination: q()){
                Image("q")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 165, height: 165)
                }
            }
            }
            
        }
        
    }
}

struct Store_Previews: PreviewProvider {
    static var previews: some View {
        Store()
            .previewDevice("iPhone 12")
    }
}
