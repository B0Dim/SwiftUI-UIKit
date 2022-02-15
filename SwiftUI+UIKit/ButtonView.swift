//
//  ButtonView.swift
//  SwiftUI+UIKit
//
//  Created by  BoDim on 15.02.2022.
//

import SwiftUI

struct ButtonView: View {
    
    @Binding var showAlert: Bool
    
    let title: String
    let currentScore: Int
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .padding()
            .alert("Your Score", isPresented: $showAlert, actions: {}) {
                Text("\(currentScore)")
            }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(
            showAlert: .constant(false),
            title: "Press me",
            currentScore: 40,
            action: {}
        )
    }
}
