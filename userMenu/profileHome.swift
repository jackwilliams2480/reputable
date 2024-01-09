//
//  profileHome.swift
//  reputable
//
//  Created by Linhao He on 1/4/24.
//

import SwiftUI

struct profileHome: View {
    var body: some View {
        HStack{
            ZStack{
                Rectangle()
                    .fill(.white)
                    .frame(width: 230)
                VStack(alignment: .leading,spacing:20){
                    ProfileImage()
                    VStack{
                        ProfileButton(text: "History", iconImage: Image(systemName: "clock"), buttonAction:{})
                        Spacer()
                        ProfileButton(text: "Setting", iconImage: Image(systemName: "gearshape"), buttonAction:{})
                        ProfileButton(text: "Logout", iconImage: Image(systemName: "rectangle.portrait.and.arrow.right"), buttonAction:{})
                    }.padding(.horizontal,13)
                    Spacer()
                }
            }.frame(width: 230)
             .background(Color.white)
            Spacer()
        }.background(.clear)
    }
}

#Preview {
    profileHome()
}
