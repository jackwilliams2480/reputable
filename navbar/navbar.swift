//
//  SwiftUIView.swift
//  reputable
//
//  Created by Linhao He on 1/8/24.
//

import SwiftUI

struct Navbar: View {
    @Binding var selectedItem:Int
    @Binding var presentSideMenu:Bool
    enum navbarType: Int, CaseIterable{
        case discover = 0
        case home
        case favorite
        
        var title: String{
            switch self {
            case .discover:
                return "Discover"
            case .home:
                return "Home"
            case .favorite:
                return "Favorite"
            }
        }
        
        var iconName: String{
            switch self {
            case .discover:
                return "magnifyingglass"
            case .home:
                return "house"
            case .favorite:
                return "star"
            }
        }
    }
    var body: some View {
        HStack{
            Button(action: {presentSideMenu.toggle()}) {
                Image(systemName: "text.justify")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.black)
            }
            Spacer()
            ForEach(navbarType.allCases,id:\.self){
                row in navbarTags(buttonAction:{
                    selectedItem = row.rawValue
                },isSelected: selectedItem == row.rawValue, tagImage: Image(systemName: row.iconName))
                Spacer()
            }
        }
    }
}

#Preview {
    Navbar(selectedItem:.constant(0),presentSideMenu: .constant(true))
}
