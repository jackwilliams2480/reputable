//
//  mainView.swift
//  reputable
//
//  Created by Linhao He on 1/8/24.
//

import SwiftUI

struct pageContent: View {
    let layout = [GridItem(.fixed(180)),GridItem(.fixed(180))]
    var body: some View {
            ScrollView {
                LazyVGrid(columns:layout){
                    ForEach(0..<10) {_ in
                        itemCard()
                    }
                }
            }
    }
}

#Preview {
    pageContent()
}
