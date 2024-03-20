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
        let emojis: Array<String> = ["🤔", "🤗", "🦅", "🥱"]
            HStack {
                CardView(content: emojis[0])
                CardView(content: emojis[3])
                CardView(content: emojis[2])
                CardView(content: emojis[1])
            }
            .foregroundColor(.orange)
            .padding()
    }
    
}

struct CardView: View {
    
    let content: String
    @State var isFaceUp = false
    
    var body: some View{
        ZStack(alignment: .center) {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
                        
        }
        .onTapGesture {
//          isFaceUp = !isFaceUp
            isFaceUp.toggle()
            print("isFaceUp: ", isFaceUp)
        }
    }
}

#Preview {
    ContentView().modelContainer(for: Item.self, inMemory: true)
}
