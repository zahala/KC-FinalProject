//
//  q.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct q: View {
    @State var q = [0,0,0,0,0,0]
    @State var prices = [690,150,45,90,20,5]
    @State var total = 0
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
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[0]) kd")
                        .font(.system(size: 20))
                       Spacer()
                    
                 Stepper("", value: $q[0], in: 0...10, step: 1)
                     .labelsHidden()

                }.padding()
                HStack{
                    Image("2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[1]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[1], in: 0...10, step: 1)
                     .labelsHidden()
                    
                }.padding()
                HStack{
                    Image("3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[2]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[2], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[3]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[3], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[4]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[4], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("6")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[5]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $q[5], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                VStack{
                    Text("Press here for receipt")
                        .padding(9)
                        .background(.green)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .onTapGesture {
                            total = (prices[0] * q[0]) + (prices[1] * q[1] + (prices[2] * q[2]) + (prices[3] * q[3]) + (prices[4] * q[4]) + (prices[5] * q[5]))
                                
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

struct q_Previews: PreviewProvider {
    static var previews: some View {
        q()
    }
}
