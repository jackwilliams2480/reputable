//
//  itemCardButtons.swift
//  reputable
//
//  Created by Linhao He on 1/9/24.
//

import SwiftUI

struct itemCardButton: View {
    let buttonAction: ()-> Void
    let tagImage:Image
    let isTrue:Bool

    var body: some View {
        Button(action: {
            buttonAction()
        }, label: {
            tagImage
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(isTrue ? .red :.black )
        }).background(Color.clear)
    }
}

#Preview {
    itemCardButton(buttonAction:{}, tagImage:Image(systemName: "hand.thumbsup") , isTrue:false)
}
