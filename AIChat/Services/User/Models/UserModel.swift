//
//  Untitled.swift
//  AIChat
//
//  Created by Hussien Awada on 25/07/2025.
//
import SwiftUI

struct UserModel {
    
    let userId: String
    let dateCreated: Date?
    let didCompleteOnboarding: Bool?
    let profileColorHex: String?
    
    init(
        userId: String,
        dateCreated: Date? = nil,
        didCompleteOnboarding: Bool? = nil,
        profileColorHex: String? = nil
    ) {
        self.userId = userId
        self.dateCreated = dateCreated
        self.didCompleteOnboarding = didCompleteOnboarding
        self.profileColorHex = profileColorHex
    }
    
    var profileColorCalculated: Color {
        guard let profileColorHex else {
            return .accentColor
        }
        
        return Color(hex: profileColorHex)
    }
    
    static var mock: Self {
        mocks[0]
    }
    
    static var mocks: [Self] {
        let now = Date()
        return [
            UserModel(
                userId: "user_001",
                dateCreated: now,
                didCompleteOnboarding: true,
                profileColorHex: "#6A5ACD" // SlateBlue
            ),
            UserModel(
                userId: "user_002",
                dateCreated: now.addingTimeInterval(days: -60),
                didCompleteOnboarding: false, // Still onboarding
                profileColorHex: "#FF6347" // Tomato
            ),
            UserModel(
                userId: "user_003",
                dateCreated: now.addingTimeInterval(hours: -1),
                didCompleteOnboarding: nil,
                profileColorHex: "#3CB371" // MediumSeaGreen
            ),
            UserModel(
                userId: "user_004",
                dateCreated: now.addingTimeInterval(minutes: 30),
                didCompleteOnboarding: true,
                profileColorHex: "#FFA07A" // LightSalmon
            )
        ]
    }
}
