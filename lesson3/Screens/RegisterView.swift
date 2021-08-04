//
//  RegisterView.swift
//  lesson 3
//
//  Created by Oleg Tsarenkoff on 2.08.21.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    
    @State private var name = ""
    @State private var numberOfSymbols: Int = 0
    @State private var labelColor: Color = .red

    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(width: 60)
                UserNameTextFieldView(name: $name,
                                      action: validateUser)
                CounterSymbolView(numberOfSymbols: numberOfSymbols, color: labelColor)
            }
            RegisterButtonView(numberOfSymbols: numberOfSymbols, action: registerUser)
        }.onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

extension RegisterView {
    private func validateUser(value: String) {
        numberOfSymbols = value.count
        if numberOfSymbols < 3 {
            labelColor = .red
        } else {
            labelColor = .green
        }
    }
    
    func registerUser() {
        if !name.isEmpty {
            user.username = name
            user.isRegistered.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView().environmentObject(UserManager())
    }
}
