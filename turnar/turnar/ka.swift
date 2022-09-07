//
//  ka.swift
//  turnar
//
//  Created by Zahraa Jassem on 04/09/2022.
//

import SwiftUI

struct ka: View {
    @State var ka = [0,0,0,0,0,0]
    @State var prices = [90,45,10,80,25,35]
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
                Text("Tesbih_tools")
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
                    Image("19")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[0]) kd")
                        .font(.system(size: 20))
                       Spacer()
                    
                 Stepper("", value: $ka[0], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("20")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("  \(prices[1]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ka[1], in: 0...10, step: 1)
                     .labelsHidden()
                    
                }.padding()
                HStack{
                    Image("21")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[2]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ka[2], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("22")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[3]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ka[3], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("23")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[4]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ka[4], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                HStack{
                    Image("24")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("   \(prices[5]) kd")
                        .font(.system(size: 20))
                    Spacer()
                    
                 Stepper("", value: $ka[5], in: 0...10, step: 1)
                     .labelsHidden()
                }.padding()
                VStack{
                    Text("Press here for receipt")
                        .padding(9)
                        .background(.green)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .onTapGesture {
                            let item = (prices[0] * ka[0])
                            let item2 = (prices[1] * ka[1])
                            let item3 =  (prices[2] * ka[2])
                            let item4 = (prices[4] * ka[4])
                            let item5 = (prices[5] * ka[5])
                            total = item + item2 + item3; +item4 + item5
                                
                        }
                    Text("total price:\(total)")
                    NavigationLink(destination: cart(total: total)){
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

struct ka_Previews: PreviewProvider {
    static var previews: some View {
        ka()
    }
}
