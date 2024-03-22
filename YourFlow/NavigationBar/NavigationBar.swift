//
//  NavigationBar.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/21/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button("Av. Tim Maia, 7095") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            Spacer()
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }

        }
    }
}


struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar().previewLayout(.sizeThatFits)
            .padding()
    }
}
