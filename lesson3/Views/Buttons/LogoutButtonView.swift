//
//  LogoutButtonView.swift
//  lesson 3
//
//  Created by Oleg Tsarenkoff on 4.08.21.
//

import SwiftUI

struct LogoutButtonView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        ActionButtonView(title: "Logout",
                         backgroundColor: .gray,
                         action: { user.isRegistered = false }
        )
    }
}

struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView()
    }
}
