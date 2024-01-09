//
//  profileAnimation.swift
//  reputable
//
//  Created by Linhao He on 1/8/24.
//

import SwiftUI

struct profileAnimation: View {
    
    @Binding var isShowing: Bool
//    @Binding var selectedSideMenuTab: Int

    var edgeTransition: AnyTransition = .move(edge: .leading)
    var content : AnyView
    var body: some View {
        
        ZStack(alignment:.bottom){
            if(isShowing){
                Color.black
                .opacity(0.3)
                .ignoresSafeArea()
                .onTapGesture {
                    isShowing.toggle()
                }
                content
                .transition(edgeTransition)
                .background(Color.clear)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .animation(.easeInOut, value: isShowing)
    }
}

#Preview {
    profileAnimation(isShowing:.constant(true), content: AnyView(profileHome()))
}
