//
//  q.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct q: View {
    var body: some View {
        VStack{
            HStack{
                NavigationLink(destination:Store()){
                    Image(systemName:"house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.black)
                }
                Spacer()
                Text("Q8crafts")
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

struct q_Previews: PreviewProvider {
    static var previews: some View {
        q()
    }
}
