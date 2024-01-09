//
//  itemCardContainer.swift
//  reputable
//
//  Created by Linhao He on 1/9/24.
//

import SwiftUI

struct itemCard: View {
    @State var like:Bool = false
    @State var dislike:Bool = false
    @State var favorite:Bool = false
    var body: some View {
        VStack(alignment:.center){
            ItemCardHeader()
            Spacer()
            Image(.placeholder).resizable()
            Spacer()
            Text("A SNOWY SUNRISE IN THE SAN JUANS").font(.system(size: 12))
            itemCartButtonContainer(isLike: $like, isDislike: $dislike, isFav: $favorite)
            
        }.frame(minWidth: 180,maxWidth: 180,minHeight: 200, maxHeight: 220)
            .background(Color.clear)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 1)
            )
    }
}

#Preview {
    itemCard()
}
