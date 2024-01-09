//
//  navbarTags.swift
//  reputable
//
//  Created by Linhao He on 1/8/24.
//

import SwiftUI

struct navbarTags: View {
    let buttonAction: ()-> Void
    let isSelected:Bool
    let tagImage:Image
    
    var body: some View {
            VStack{
                Button(action: {
                    buttonAction()
                }, label: {
                    tagImage
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.black)
                }).background(Color.clear)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(isSelected ? .red : .clear)
                    .frame(width: 32, height: 3)
            }.frame(height: 32)
    }
}

#Preview {
    navbarTags(buttonAction: {print("hello")},isSelected: false, tagImage: Image(systemName: "magnifyingglass"))
}
