//
//  GreetingsBar.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/21/24.
//

import SwiftUI

struct GreetingsBar: View {
    @State private var greetingsIndex = 0
    @State private var greetings: Array<String> = ["Hello", "Cheers", "Greetings", "Howdy", "Welcome"]
    let clientName: String = "Lumma"
    
    var body: some View {
        
        Button("\(greetings[greetingsIndex]), \(clientName)") {
            self.changeGreeting()
        }
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(.black)
    }
    
    func changeGreeting() {
//        greetingsIndex = (greetingsIndex + 1) % greetings.count
//        greetingsIndex = Int.random(in: 0..<greetings.count)
        greetingsIndex += 1
        
        if greetingsIndex >= greetings.count {
            greetings.shuffle()
            greetingsIndex = 0
        }
    }
}


struct GreetingsBar_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsBar().previewLayout(.sizeThatFits)
            .padding()
    }
}
