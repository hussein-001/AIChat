//
//  AppState.swift
//  AIChat
//
//  Created by Hussien Awada on 01/07/2025.
//

import SwiftUI

@Observable
class AppState {
     
    private(set) var showTabBar: Bool {
        didSet {
            UserDefaults.showTabBarView = showTabBar
        }
    }
    
    init(showTabBar: Bool = UserDefaults.showTabBarView) {
        self.showTabBar = showTabBar
    }
    
    func updateViewState(showTabBarView: Bool) {
        showTabBar = showTabBarView
    }
}

extension UserDefaults {
    
    private struct Keys {
        static let showTabBar = "showTabBarView"
    }
    
    static var showTabBarView: Bool {
        get {
            standard.bool(forKey: Keys.showTabBar)
        } set {
            standard.set(newValue, forKey: Keys.showTabBar)
        }
    }
}
