//
//  TabsView.swift
//  TikTok
//
//  Created by Alexander Naumenko on 29/10/2022.
//

import SwiftUI

struct TabsView: View {
    
    var items: [Item] = []
    
    init() {
        var r: [Item] = []
        
        for i in 0..<10000 {
            r.append(.init(id: i, value: i * 10))
        }
        
        items = r
    }
    
    @State var index = 0
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets ?? UIEdgeInsets()
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(0..<items.count, id: \.self) { i in
                ItemCell(item: items[i])
                .rotationEffect(.init(degrees: -90))
                .frame(width: UIScreen.main.bounds.width)
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .rotationEffect(.init(degrees: 90))
        .frame(width: UIScreen.main.bounds.height - edges.top - edges.bottom)
    }
}

struct TabsView_Preview: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
