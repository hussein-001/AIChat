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
    
    @AppStorage("showTabBarView") var showTabBar: Bool = true
    
    var body: some View {
        
        AppViewBuilder(
            showTabBar: showTabBar,
            tabBarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
    }
}

#Preview {
    AppView()
}
