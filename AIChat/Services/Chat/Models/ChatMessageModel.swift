//
//  ChatMessageModel.swift
//  AIChat
//
//  Created by Hussien Awada on 23/07/2025.
//

import Foundation

struct ChatMessageModel {
    let id: String
    let chatId: String
    let authorId: String?
    let content: String?
    let seenByIds: [String]?
    let dateCreated: Date?
    
    init(
        id: String,
        chatId: String,
        authorId: String? = nil,
        content: String? = nil,
        seenByIds: [String]? = nil,
        dateCreated: Date? = nil
    ) {
        self.id = id
        self.chatId = chatId
        self.authorId = authorId
        self.content = content
        self.seenByIds = seenByIds
        self.dateCreated = dateCreated
    }
    
    func hasBeenSeenBy(userId: String) -> Bool {
        guard let seenByIds else { return false}
        return seenByIds.contains(userId)
    }
    
    static var mock: ChatMessageModel {
        mocks[0]
    }
    
    static var mocks: [ChatMessageModel] {
        let now = Date()
        return [
            ChatMessageModel(
                id: "msg_1",
                chatId: "mock_chat_1",
                authorId: "user1",
                content: "Hey there!",
                seenByIds: ["user2", "user3"],
                dateCreated: now
            ),
            ChatMessageModel(
                id: "msg_2",
                chatId: "mock_chat_1",
                authorId: "user2",
                content: "Hello! How are you?",
                seenByIds: ["user1"],
                dateCreated: now.addingTimeInterval(-300) // 5 minutes ago
            ),
            ChatMessageModel(
                id: "msg_3",
                chatId: "mock_chat_2",
                authorId: "user3",
                content: "Are we meeting today?",
                seenByIds: ["user1", "user2", "user4"],
                dateCreated: now.addingTimeInterval(-1800) // 30 minutes ago
            ),
            ChatMessageModel(
                id: "msg_4",
                chatId: "mock_chat_3",
                authorId: "user4",
                content: "Sure, see you at 5!",
                seenByIds: nil,
                dateCreated: now.addingTimeInterval(-86400) // 1 day ago
            )
        ]
    }
}
