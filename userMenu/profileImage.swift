//
//  SwiftUIView.swift
//  reputable
//
//  Created by Linhao He on 1/4/24.
//

import SwiftUI

struct ProfileImage: View {
    var body: some View {
        HStack{
            Image(systemName: "person")
                .resizable()
                .frame(width: 32,height: 32)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay{
                    Circle().stroke(.black, lineWidth: 2)
                }
            Text("name").font(.title)
        }
    }
}

#Preview {
    ProfileImage()
}
