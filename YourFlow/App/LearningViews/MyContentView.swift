//
//  ContentView.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/12/24.
//

// This will be my game changer app for SellersFlow - It will integrate
// our website dashboard in it, design aproval, listing, ads, strategies,
// messaging and so more.

// Starting on iOS; expanding into Android, macOS, iPadOS, Windows
// platforms.

import SwiftUI
//import SwiftData

struct MyContentView: View {
    //    @Environment(\.modelContext) private var modelContext
    //    @Query private var items: [Item]
    
    @State var text: String = "Hello, world!"
    @State var clicks: Int = 0
    
    var body: some View {
        VStack(content: {
            Image (systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(text)
            
            Button("See the magic"){
                if clicks == 0 {
                    self.text = "Bye, bye, world!"
                    self.clicks = 1
                } else {
                    self.text = "Hello, world!"
                    self.clicks = 0
                }
            }.padding()
        })
        .padding()
        .onAppear(){
            let i: Int = 2
            let s = "this is a test"
            let b: Bool = true
            let f: Float = 2.5
            let d = 3.5
            
            print("The variables are: ", i, s, b, f, d)
            
        }
        //
        //        NavigationSplitView {
        //            List {
        //                ForEach(items) { item in
        //                    NavigationLink {
        //                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
        //                    } label: {
        //                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
        //                    }
        //                }
        //                .onDelete(perform: deleteItems)
        //            }
        //            .toolbar {
        //                ToolbarItem(placement: .navigationBarTrailing) {
        //                    EditButton()
        //                }
        //                ToolbarItem {
        //                    Button(action: addItem) {
        //                        Label("Add Item", systemImage: "plus")
        //                    }
        //                }
        //            }
        //        } detail: {
        //            Text("Select an item")
        //        }
        //    }
        //
        //    private func addItem() {
        //        withAnimation {
        //            let newItem = Item(timestamp: Date())
        //            modelContext.insert(newItem)
        //        }
        //    }
        //
        //    private func deleteItems(offsets: IndexSet) {
        //        withAnimation {
        //            for index in offsets {
        //                modelContext.delete(items[index])
        //            }
        //        }
        //    }
        //}
        //
    }
}







#Preview {
    MyContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
