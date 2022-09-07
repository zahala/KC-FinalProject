//
//  q.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct q: View {
    @State var q = [0,0,0,0,0]
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
            
            ScrollView{
                HStack{
                    Image("DB250")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   80 kd")
                        .font(.system(size: 20))
                       Spacer()
                    
                 Stepper("", value: $q[0], in: 0...10, step: 1)
                     .labelsHidden()

                }
                HStack{
                    Image("FD150e")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   250 kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[1], in: 0...10, step: 1)
                     .labelsHidden()
                    
                }
                HStack{
                    Image("pa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   450 kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[2], in: 0...10, step: 1)
                     .labelsHidden()
                }
                HStack{
                    Image("sh")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   70 kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[3], in: 0...10, step: 1)
                     .labelsHidden()
                }
                HStack{
                    Image("h")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   20 kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[4], in: 0...10, step: 1)
                     .labelsHidden()
                }
                HStack{
                    Image("fa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   5 kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[5], in: 0...10, step: 1)
                     .labelsHidden()
                }
                HStack{
                    Text("total:")
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
