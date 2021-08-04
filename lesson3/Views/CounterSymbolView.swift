//
//  CounterSymbolView.swift
//  lesson 3
//
//  Created by Oleg Tsarenkoff on 4.08.21.
//

import SwiftUI

struct CounterSymbolView: View {
    let numberOfSymbols: Int
    let color: Color
    
    var body: some View {
        Text("\(numberOfSymbols)")
            .multilineTextAlignment(.leading)
            .foregroundColor(color)
            .frame(width: 60)
    }
}

struct CounterSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        CounterSymbolView(numberOfSymbols: 1, color: .green)
    }
}
