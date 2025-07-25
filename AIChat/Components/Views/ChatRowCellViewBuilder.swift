//
//  ChatRowCellViewBuilder.swift
//  AIChat
//
//  Created by Hussien Awada on 24/07/2025.
//

import SwiftUI

struct ChatRowCellViewBuilder: View {
    
    var currentUserId: String? = ""
    var chat: ChatModel = .mock
    var getAvatar: () async -> AvatarModel?
    var getLastCharMessage: () async -> ChatMessageModel?
    
    @State private var avatar: AvatarModel?
    @State private var lastChatMessage: ChatMessageModel?
    
    @State private var didLoadAvatar: Bool = false
    @State private var didLoadChatMessage: Bool = false
    
    private var hasNewChat: Bool {
        guard let lastChatMessage, let currentUserId else { return false }
        return lastChatMessage.hasBeenSeenBy(userId: currentUserId)
        
    }
    
    private var isLoading: Bool {
        if didLoadAvatar && didLoadChatMessage {
            return false
        }
            return true
    }
    
    private var subhedaline: String? {
        if isLoading {
            return "xxx xxx xxxx xxxxxx"
        }
        
        if avatar == nil && lastChatMessage == nil {
            return "Error loading data."
        }
        
        return lastChatMessage?.content
    }
    
    var body: some View {
        ChatRowCellView(
            imageName: avatar?.profileImageName,
            headline: isLoading ? "xxxxxxx xxxx " : avatar?.name,
            subheadline: subhedaline,
            hasNewChat: isLoading ? false : hasNewChat
        )
        .redacted(reason: isLoading ? .placeholder : [])
        .task {
            avatar = await getAvatar()
            didLoadAvatar = true
        }
        .task {
            lastChatMessage = await getLastCharMessage()
            didLoadChatMessage = true
        }
    }
}

#Preview {
    ChatRowCellViewBuilder(chat: .mock) {
        return .mock
    } getLastCharMessage: {
        return .mock
    }
}
