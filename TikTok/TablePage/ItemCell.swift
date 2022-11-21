//
//  ItemCell.swift
//  TikTok
//
//  Created by Alexander Naumenko on 29/10/2022.
//

import SwiftUI

struct ItemCell: View {
    
    var item: Item
    
    var body: some View {
        HStack() {
            Text("Value = \(item.value)").background(.yellow)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(item.id % 2 == 0 ? .green : .cyan)
    }
    
    init(item: Item) {
        self.item = item
        print("cell init, id = \(item.id)")
    }
}

struct ItemCell_Preview: PreviewProvider {
    static var previews: some View {
        ItemCell(item: Item(id: 1, value: 2))
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
}
