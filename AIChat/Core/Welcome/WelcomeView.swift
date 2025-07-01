//
//  Welcome.swift
//  AIChat
//
//  Created by Hussien Awada on 01/07/2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                ImageLoaderView()
                    .ignoresSafeArea()
                titleSection
                    .padding(.top, 24)
                
                ctaButtons
                    .padding(16)
                
                policyLinks
            }
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 8) {
            Text("AI CHAT 🤘")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Powered By Hussein Awada")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        
    }
    
    private var ctaButtons: some View {
        VStack(spacing: 8) {
            NavigationLink {
                OnboardingCompletedView()
            } label: {
                Text("Get Started")
                    .callToActionButton()
            }
            
            Text("Already have an account? Sign in,")
                .underline()
                .fontWeight(.bold)
                .padding(8)
                .tappableBackgorund()
                .onTapGesture {
                    
                }
        }
    }
    
    private var policyLinks : some View {
        HStack(spacing: 8) {
            Link(destination: URL(string: Constants.privacyPolicyUrl)!) {
                Text("Terms of Service")
            }
            Circle()
                .fill(.accent)
                .frame(width: 4, height: 4)
            Link(destination: URL(string: Constants.privacyPolicyUrl)!) {
                Text("Terms of Service")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
