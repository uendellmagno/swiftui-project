//
//  DashboardWidgetsGridView.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/23/24.
//

import SwiftUI

struct DashboardGridView: View {
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100))
        ]) {
            Text("teste")
            Text("teste")
            Text("teste")
        }
    }
}

struct DashboardGridView_Preview: PreviewProvider {
    static var previews: some View {
        DashboardGridView()
    }
}
