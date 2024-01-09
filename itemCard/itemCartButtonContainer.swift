//
//  itemCartButton.swift
//  reputable
//
//  Created by Linhao He on 1/9/24.
//

import SwiftUI

struct itemCartButtonContainer: View {
    @Binding var isLike:Bool
    @Binding var isDislike:Bool
    @Binding var isFav:Bool
    var body: some View {
        HStack{
            itemCardButton(buttonAction: {
                isLike = !isLike
            },
                           tagImage: Image(systemName: isLike ? "hand.thumbsup.fill" : "hand.thumbsup"),isTrue: isLike)
            itemCardButton(buttonAction: {isDislike = !isDislike},
                           tagImage: Image(systemName: isDislike ? "hand.thumbsdown.fill" : "hand.thumbsdown"),isTrue: isDislike)
            itemCardButton(buttonAction: {isFav = !isFav},
                           tagImage: Image(systemName: isFav ? "star.fill" : "star"),isTrue: isFav)
        }
    }
}

#Preview {
    itemCartButtonContainer(isLike: .constant(true), isDislike: .constant(false), isFav: .constant(true))
}
