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
    
    @AppStorage("showTabBarView") var showTabBar: Bool = false
    
    var body: some View {
        
        AppViewBuilder(showTabBar: showTabBar,
                       tabBarView: {
            ZStack {
                Color.blue.ignoresSafeArea()
                Text("Tabbar")
            }
        },
                       onboardingView: {
            ZStack {
                Color.red.ignoresSafeArea()
                Text("onboarding")
            }
        }
        )
    }
}

#Preview {
    AppView()
}
