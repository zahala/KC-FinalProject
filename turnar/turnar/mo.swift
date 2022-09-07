//
//  mo.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct mo: View {
    @State var mo = [0,0,0,0,0]
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
            
           ScrollView{
                HStack{
                    Image("DB250")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   80 kd")
                        .font(.system(size: 20))
                       Spacer()
                    
                 Stepper("", value: $mo[0], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $mo[1], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $mo[2], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $mo[3], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $mo[4], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $mo[5], in: 0...10, step: 1)
                     .labelsHidden()
                }
                HStack{
                    Text("total:")
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
