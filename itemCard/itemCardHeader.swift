//
//  SwiftUIView.swift
//  reputable
//
//  Created by Linhao He on 1/9/24.
//

import SwiftUI

struct ItemCardHeader: View {
    var body: some View {
        HStack{
            Image(systemName: "person")
                .resizable()
                .frame(width: 24,height: 24)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay{
                    Circle().stroke(.black, lineWidth: 2)
                }
            Text("name").font(.title)
        }
    }
}

#Preview {
    ItemCardHeader()
}
