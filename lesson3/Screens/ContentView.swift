//
//  ContentView.swift
//  lesson3
//
//  Created by Oleg Tsarenkoff on 2.08.21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimerCounter()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi \(user.username)!")
                .font(.title)
                .offset(x: 0, y: 100)
                
            Text("\(timer.counter)")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.orange)
                .offset(x: 0, y: 200)
        
            Spacer()
            TimerButtonView()
                .environmentObject(timer)
          
            LogoutButtonView()
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
