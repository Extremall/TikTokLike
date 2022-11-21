//
//  TikTokTable.swift
//  TikTok
//
//  Created by Alexander Naumenko on 29/10/2022.
//

import SwiftUI

struct Item: Identifiable {
    var id: Int
    var value: Int
}

struct TikTokTable: View {
    var items: [Item] = []
    
    init() {
        var r: [Item] = []
        
        for i in 0..<100 {
            r.append(.init(id: i, value: i * 10))
        }
        
        items = r
    }
    
    var body: some View {
        VStack {
            List(items) { item in
                ItemCell(item: item)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparatorTint(.clear)
            }.listStyle(.plain)
            .padding(0)
        }
        .padding(0)
    }
}

struct TikTokTable_Preview: PreviewProvider {
    static var previews: some View {
        TikTokTable().ignoresSafeArea()
    }
}
