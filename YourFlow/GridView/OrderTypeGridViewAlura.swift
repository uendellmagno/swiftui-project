//
//  OrderTypeGridViewAlura.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/23/24.
//

import SwiftUI

struct OrderTypeGridViewAlura: View {
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: 15) {
                    ForEach(ordersMock) { orderItem in
                        OrderTypeView(orderType: orderItem)
                    }
                }
            }
            
        .frame(height: 200)
        .padding(.horizontal, 15)
        .padding(.top, 15)
    }
}

struct OrderTypeGridViewAlura_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridViewAlura().previewLayout(.sizeThatFits)
    }
}
