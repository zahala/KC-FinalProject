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
            Text("total price:\(total)")
        }
        
    }
}

struct cart_Previews: PreviewProvider {
    static var previews: some View {
        cart(total: 0)
    }
}
