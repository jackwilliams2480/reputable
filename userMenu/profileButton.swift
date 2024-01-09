//
//  historyButton.swift
//  reputable
//
//  Created by Linhao He on 1/4/24.
//

import SwiftUI

struct ProfileButton: View {
    let text:String
    let iconImage: Image
    let buttonAction: ()-> Void
    var body: some View {
        HStack{
            iconImage
            Button(action:buttonAction){
                Text(text)
                .foregroundColor(.black)
            }
            
        }
    }
}

#Preview {
    ProfileButton(text: "History",iconImage:  Image(systemName: "clock"),buttonAction:{})
}
