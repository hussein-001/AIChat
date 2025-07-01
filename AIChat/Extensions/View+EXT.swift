//
//  View+EXT.swift
//  AIChat
//
//  Created by Hussien Awada on 01/07/2025.
//

import SwiftUI

extension View {
    func callToActionButton() -> some View {
        self
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.accentColor)
            .cornerRadius(16)
    }
    
    func tappableBackgorund() -> some View {
        self
            .background(Color.black.opacity(0))
    }
}
