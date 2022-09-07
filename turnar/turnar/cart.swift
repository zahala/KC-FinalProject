//
//  cart.swift
//  turnar
//
//  Created by Zahraa Jassem on 07/09/2022.
//

import SwiftUI

struct cart: View {
    @State var total : Int
    var body: some View {
        VStack{
            HStack{
                Text("total price:\(total)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.green)
            
                    
            }
            HStack{
            Image("ke")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 250)
            }
           
            HStack{
                Text("done payment")
                    .padding(9)
                    .background(.green)
                    .cornerRadius(15)
                    .foregroundColor(.white)
            }
            
            
        }
        
    }
}

struct cart_Previews: PreviewProvider {
    static var previews: some View {
        cart(total: 0)
    }
}
