//
//  lesson3App.swift
//  lesson3
//
//  Created by Oleg Tsarenkoff on 2.08.21.
//

import SwiftUI

@main
struct lesson3App: App {
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
