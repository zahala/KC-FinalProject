//
//  Store.swift
//  turnar
//
//  Created by Zahraa Jassem on 02/09/2022.
//

import SwiftUI

struct Store: View {
    var body: some View {
        
        VStack (alignment:.leading){
                Text("سجل الان")
                    .font(.largeTitle)
            }
    }
}

struct Store_Previews: PreviewProvider {
    static var previews: some View {
        Store()
            .previewDevice("iPhone 12")
    }
}
