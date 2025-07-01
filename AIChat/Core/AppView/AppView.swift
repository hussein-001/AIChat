//
//  AppView.swift
//  AIChat
//
//  Created by Hussien Awada on 30/06/2025.
//

import SwiftUI

// tabbar - signed in
// onboarding - signed out

struct AppView: View {
    
    @State var appState: AppState = AppState()
    
    var body: some View {
        
        AppViewBuilder(
            showTabBar: appState.showTabBar,
            tabBarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
        .environment(appState)
    }
}

#Preview("TabView") {
    AppView(appState: AppState(showTabBar: true))
}

#Preview("OnBoarding") {
    AppView(appState: AppState(showTabBar: false))
}
