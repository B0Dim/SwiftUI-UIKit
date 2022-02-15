//
//  ContentView.swift
//  SwiftUI+UIKit
//
//  Created by  BoDim on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var targetValue = Int.random(in: 0...100)
    @State private var currentValue = 40.0
    @State private var showAlert = false
    
    var body: some View {
        VStack() {
            Text("Move slider closer to \(targetValue)")
            HStack {
                Text("0")
                SliderView(
                    value: $currentValue,
                    alpha: computeScore())
                Text("100")
            }
            .padding()
            ButtonView(
                showAlert: $showAlert,
                title: "Check me!",
                currentScore: computeScore(),
                action: { showAlert = true }
            )
            Button("Try again") {
                targetValue = Int.random(in: 0...100)
            }
        }
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
