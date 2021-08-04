//
//  ActionButtonView.swift
//  lesson 3
//
//  Created by Oleg Tsarenkoff on 4.08.21.
//

import SwiftUI

struct ActionButtonView: View {
    
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
        }
        .frame(width: 200, height: 60)
        .background(backgroundColor)
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(Color.black, lineWidth: 2))
    }
}
struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView(title: "Go",
                         backgroundColor: Color.pink,
                         action: {})
    }
}
