//
//  UserNameTextFieldView.swift
//  lesson 3
//
//  Created by Oleg Tsarenkoff on 4.08.21.
//

import SwiftUI

struct UserNameTextFieldView: View {
    @Binding var name: String
    let action: (String) -> Void
    
    var body: some View {
        TextField("Enter your name...", text: $name)
            .multilineTextAlignment(.center)
            .onChange(of: name, perform: action)
    }
}

struct UserNameTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        UserNameTextFieldView(name: .constant("username"),
                              action: {_ in })
    }
}
