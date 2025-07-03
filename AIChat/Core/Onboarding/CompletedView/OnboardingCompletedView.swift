//
//  OnboardingCompletedView.swift
//  AIChat
//
//  Created by Hussien Awada on 01/07/2025.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var root
    
    @State private var isCompleteingProfileSetup: Bool = false
    var selectedColor: Color = .orange
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup complete!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(selectedColor)
            
            Text("We've set up your profile and you're ready to start chatting.")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom, alignment: .center, content: {
            ctaButton
        })
        .padding(24)
        .toolbar(.hidden, for: .navigationBar)
    }
    
    func onFinishButtonPressed() {
        isCompleteingProfileSetup = true
        Task {
            try await Task.sleep(for: .seconds(3))
            isCompleteingProfileSetup = false
            root.updateViewState(showTabBarView: true)
            
        }
    }
    
    private var ctaButton: some View {
        Button {
            // finish onBoarding and enter app!
            onFinishButtonPressed()
        } label: {
            ZStack {
                if isCompleteingProfileSetup {
                    ProgressView()
                        .tint(.white)
                } else {
                    Text("Finish")
                }
            }
            .callToActionButton()
        }
        .disabled(isCompleteingProfileSetup)
    }
}

#Preview {
    NavigationStack {
        OnboardingCompletedView()
            .environment(AppState())
    }
}
