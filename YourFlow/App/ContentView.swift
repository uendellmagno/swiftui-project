//
//  ContentView.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            NavigationBar()
//                .padding()
//            
//            ScrollView(.vertical, showsIndicators: false) {
//                VStack {
//                    OrderTypeGridViewAlura()
//                }
//            }
            
            ScrollView(.vertical, showsIndicators: false){
                GreetingsBar()
                    .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
