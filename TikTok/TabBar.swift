//
//  TabBar.swift
//  TikTok
//
//  Created by Alexander Naumenko on 29/10/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            TableView()
                .tabItem {
                    Label("Table", systemImage: "person")
                }
            TabsView()
                .tabItem {
                    Label("Tabs", systemImage: "calendar")
                }
        }
    }
}

struct TabBar_Preview: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
