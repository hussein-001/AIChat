//
//  OnboardingCompletedView.swift
//  AIChat
//
//  Created by Hussien Awada on 01/07/2025.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var root
    
    var body: some View {
        VStack {
            Text("OnboardingCompleted!")
                .frame(maxHeight: .infinity)
            
            Button {
                // finish onBoarding and enter app!
                onFinishButtonPressed()
            } label: {
                Text("Finish")
                    .callToActionButton()
            }
        }
        .padding(16)
    }
    
    func onFinishButtonPressed() {
        root.updateViewState(showTabBarView: true)
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState())
}
