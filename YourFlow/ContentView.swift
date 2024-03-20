//
//  ContentView.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/20/24.
//

// VStack for vertical | HStack for horizontal | ZStack for 3D like > they are like VStack(content:{ your code })
// .yourFormatting() for each element or for the overall, global element
import SwiftUI

struct ContentView: View {
    
    var body: some View {
            HStack {
                CardView(isFaceUp: true)
                CardView()
                CardView()
                CardView()
            }
            .foregroundColor(.orange)
            .padding()
    }
    
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View{
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                
                Text("🤔").font(.largeTitle)
            } else {
                Text("🤔").font(.largeTitle)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.orange)
                
            }
                        
        })
    }
}

#Preview {
    ContentView().modelContainer(for: Item.self, inMemory: true)
}
