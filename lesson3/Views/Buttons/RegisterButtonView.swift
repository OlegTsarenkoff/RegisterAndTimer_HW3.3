//
//  RegisterButtonView.swift
//  lesson 3
//
//  Created by Oleg Tsarenkoff on 4.08.21.
//

import SwiftUI

struct RegisterButtonView: View {
    
    let numberOfSymbols: Int
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        .disabled(numberOfSymbols < 3)
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(numberOfSymbols: 1, action: {})
    }
}
