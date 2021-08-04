//
//  UserManager.swift
//  lesson 3
//
//  Created by Oleg Tsarenkoff on 2.08.21.
//

import SwiftUI

final class UserManager: ObservableObject {
    @AppStorage("isRegistered") var isRegistered: Bool = false {
        willSet {
            self.objectWillChange.send()
        }
    }
    
    @AppStorage("username") var username: String = ""
}
