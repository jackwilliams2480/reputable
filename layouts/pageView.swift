//
//  pageView.swift
//  reputable
//
//  Created by Linhao He on 1/8/24.
//

import SwiftUI

struct pageView: View {
    
    @State var presentSideMenu = false
    @State var selectedItem = 1
    var body: some View {
        ZStack{
            VStack{
                Navbar(selectedItem: $selectedItem, presentSideMenu: $presentSideMenu)
                Divider()
                Spacer()
                pageContent()
                Spacer()
            }.padding(.horizontal, 24)
            profileAnimation(
                isShowing: $presentSideMenu,
                content: AnyView(profileHome()))
        }
    }
}

#Preview {
    pageView()
}
