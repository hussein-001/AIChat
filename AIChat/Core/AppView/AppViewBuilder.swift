//
//  AppViewBuilder.swift
//  AIChat
//
//  Created by Hussien Awada on 30/06/2025.
//

import SwiftUI

struct AppViewBuilder<TabBarView: View, OnBoardingView: View>: View {
    
    var showTabBar: Bool = false
    @ViewBuilder var tabBarView: TabBarView
    @ViewBuilder var onboardingView: OnBoardingView
    
    var body: some View {
        ZStack {
            if showTabBar {
                tabBarView
                    .transition(.move(edge: .trailing))
            } else {
                onboardingView
                    .transition(.move(edge: .leading))
            }
        }
        .animation(.smooth, value: showTabBar)
    }
}

private struct PreviewView: View {
    
    @State private var showTabBar: Bool = false
    
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
        .onTapGesture {
            withAnimation {
                showTabBar.toggle()
            }
        }
    }
}

#Preview {
    PreviewView()
}
