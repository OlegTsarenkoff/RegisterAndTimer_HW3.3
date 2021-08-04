//
//  TimerButtonView.swift
//  lesson 3
//
//  Created by Oleg Tsarenkoff on 4.08.21.
//

import SwiftUI

struct TimerButtonView: View {
    @EnvironmentObject var timer: TimerCounter
    
    var body: some View {
        ActionButtonView(title: "\(timer.buttonTitle)",
                         backgroundColor: .pink,
                         action: { timer.startTimer() })
    }
}

struct TimerButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TimerButtonView()
    }
}
