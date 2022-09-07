//
//  ja.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct ja: View {
    @State var ra = []
    @State var newItem = ""
    @State var quantity = [0,0,0,0,0,0]
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
                Text("ra3ialm7al")
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
                    Stepper("", value: $quantity[0], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $quantity[1], in: 0...10, step: 1)
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
                    
                    Stepper("", value: $quantity[2], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $quantity[3], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $quantity[4], in: 0...10, step: 1)
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
                    
                 Stepper("", value: $quantity[5], in: 0...10, step: 1)
                     .labelsHidden()
                }
                HStack{
                    Text("total:")
                }
            
    
    }
        }
}
}
            
        
        
    


struct ja_Previews: PreviewProvider {
    static var previews: some View {
        ja()
    }
}
