//
//  TableView.swift
//  TikTok
//
//  Created by Alexander Naumenko on 29/10/2022.
//

import SwiftUI

struct TableView: View {
    var body: some View {
        TikTokTable()
            .background(Color.red)
            .ignoresSafeArea()
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
