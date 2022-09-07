//
//  mo.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct mo: View {
    @State var mo = [0,0,0,0,0,0]
    @State var prices = [80,20,35,10,60,120]
    @State var total = 0
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
                    .foregroundColor(Color.green)
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
                    Image("7")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[0]) kd")
                        .font(.system(size: 20))
                       Spacer()
                    
                 Stepper("", value: $mo[0], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("8")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[1]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $mo[1], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("9")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[2]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $mo[2], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("10")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[3]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $mo[3], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("11")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[4]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $mo[4], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("12")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[5]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $mo[5], in: 0...10, step: 1)
                        .labelsHidden()
                }.padding()
               
               VStack{
                   Text("Press here for receipt")
                       .padding(9)
                       .background(.green)
                       .cornerRadius(15)
                       .foregroundColor(.white)
                       .onTapGesture {
                           total = (prices[0] * mo[0]) + (prices[1] * mo[1] + (prices[2] * mo[2]) + (prices[3] * mo[3]) + (prices[4] * mo[4]) + (prices[5] * mo[5]))
                               
                       }
                   Text("total price:\(total)")
                   NavigationLink(destination: cart()){
                   Image(systemName:"cart")
                       .resizable()
                       .scaledToFit()
                       .frame(width: 25, height: 25)
                       .foregroundColor(Color.black)
                   
                   }
                   
               
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
