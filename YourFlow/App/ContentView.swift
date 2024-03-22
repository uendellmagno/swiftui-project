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
            
            Text("Hello, World!")
                .padding()
            
            @State var ClickableBox = RoundedRectangle(cornerRadius: 12).size(CGSize(width: 150.0, height: 150.0))
            HStack (content: {
                ClickableBox.fill(.orange)
                ClickableBox.fill(.red)
                
            })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
