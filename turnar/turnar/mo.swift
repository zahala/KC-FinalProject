//
//  mo.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct mo: View {
    var body: some View {
        VStack{
            HStack{
                NavigationLink(destination: Store()){
                    Image(systemName:"house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.black)
                    
                }
                Spacer()
                Text("Q8_50")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                Spacer()
                NavigationLink(destination: ContentView()){
                    Image(systemName:"person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.black)
                }
            }.padding()
            Spacer()
            List{
                HStack{
                    Image("")
                }
            }
        }
    
    }
}

struct mo_Previews: PreviewProvider {
    static var previews: some View {
        mo()
    }
}
