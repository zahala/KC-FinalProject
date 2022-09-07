//
//  ba.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct ba: View {
    @State var ba = [0,0,0,0,0,0]
    @State var prices = [35,10,105,45,5,9]
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
                Text("Bakelite_965")
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
                    Image("13")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[0]) kd")
                        .font(.system(size: 20))
                       Spacer()
                    
                 Stepper("", value: $ba[0], in: 0...10, step: 1)
                     .labelsHidden()

                }.padding()
                HStack{
                    Image("14")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[1]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ba[1], in: 0...10, step: 1)
                     .labelsHidden()
                    
                }.padding()
                HStack{
                    Image("15")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[2]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ba[2], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("16")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[3]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ba[3], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("17")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[4]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ba[4], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("18")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[5]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ba[5], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                VStack{
                    Text("Press here for receipt")
                        .padding(9)
                        .background(.green)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .onTapGesture {
                            total = (prices[0] * ba[0]) + (prices[1] * ba[1] + (prices[2] * ba[2]) + (prices[3] * ba[3]) + (prices[4] * ba[4]) + (prices[5] * ba[5]))
                                
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


struct ba_Previews: PreviewProvider {
    static var previews: some View {
        ba()
    }
}
