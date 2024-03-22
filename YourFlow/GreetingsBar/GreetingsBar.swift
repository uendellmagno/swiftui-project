//
//  GreetingsBar.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/21/24.
//

import SwiftUI
import PostgresClientKit


struct GreetingsBar: View {
    @State private var greetingsIndex = 0
    @State private var greetings: Array<String> = ["Hello", "Cheers", "Greetings", "Howdy", "Welcome"]
    @State private var clientName: String = "Lumma Cups"
    
    
    var body: some View {
        
        
        VStack (alignment: .leading) {
            var greetingText: String
            let isShortName = clientName.count <= 7
            let textSize: CGFloat = isShortName ? 43 : 35
            
            if clientName.isEmpty || isShortName {
                greetingText = "\(greetings[greetingsIndex]), \(clientName.isEmpty ? "Dear User" : clientName)!"
            } else {
                greetingText = "\(greetings[greetingsIndex]),\n\(clientName)!"
            }
            
            return Button(action:  {
                self.fetchClientName()
                self.changeGreeting()
            }) {
                Text(greetingText)
                    .font(.system(size: textSize, weight: .bold))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
            }
            
        }
    }
    
    
    // This is just a test - PostgreSQL requisitions should be made on separete cores in order to get info and return.
    func fetchClientName() {
        do {
            var configuration = PostgresClientKit.ConnectionConfiguration()
            configuration.host = "localhost"
            configuration.database = "fake_sellersflow"
            configuration.user = "postgres"
            
            let connection = try PostgresClientKit.Connection(configuration: configuration)
            defer { connection.close() }
            
            let query = "SELECT \"Client_Name\" FROM fake_sellersflow.public.clients_data"
            let statement = try connection.prepareStatement(text: query)
            defer { statement.close() }
            
            let cursor = try statement.execute(parameterValues: ["Client_Name"])
            defer { cursor.close() }
            
            for row in cursor {
                print(row)
                clientName = "\(row)"
            }
            
            print(clientName)
        } catch {
            print(error)
        }
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
