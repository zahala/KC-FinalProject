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
    @State var prices = [80,250,450,70,20,5]
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
                Text("ra3ialm7al")
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
                    Image("25")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[0]) kd")
                        .font(.system(size: 20))
                       Spacer()
                    Stepper("", value: $quantity[0], in: 0...10, step: 1)
                        .labelsHidden()
    
                }.padding()
                
                HStack{
                    Image("26")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[1]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $quantity[1], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                
                HStack{
                    Image("27")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[2]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                    Stepper("", value: $quantity[2], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("28")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[3]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $quantity[3], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("29")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[4]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $quantity[4], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("30")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[5]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $quantity[5], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                VStack{
                    Text("Press here for receipt")
                        .padding(9)
                        .background(.green)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .onTapGesture {
                            total = (prices[0] * quantity[0]) + (prices[1] * quantity[1] + (prices[2] * quantity[2]) + (prices[3] * quantity[3]) + (prices[4] * quantity[4]) + (prices[5] * quantity[5]))
                                
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
            
        
        
    


struct ja_Previews: PreviewProvider {
    static var previews: some View {
        ja()
    }
}
