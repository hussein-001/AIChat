//
//  ChatModel.swift
//  AIChat
//
//  Created by Hussien Awada on 23/07/2025.
//

import Foundation

struct ChatModel: Identifiable {
    let id: String
    let userId: String
    let avataraID: String
    let dateCreated: Date
    let dateModified: Date
    
    static var mock: ChatModel {
        mocks[0]
    }
    
    static var mocks: [ChatModel] {
        let now = Date()
        return [
            ChatModel(id: "mock_chat_1", userId: "user1", avataraID: "avatar 1", dateCreated: now, dateModified: now),
            ChatModel(id: "mock_chat_2", userId: "user2", avataraID: "avatar 2", dateCreated: now.addingTimeInterval(hours: -1), dateModified: now.addingTimeInterval(minutes: -30)),
            ChatModel(id: "mock_chat_3", userId: "user3", avataraID: "avatar 3", dateCreated: now.addingTimeInterval(hours: -2), dateModified: now.addingTimeInterval(hours: -1)),
            ChatModel(id: "mock_chat_4", userId: "user4", avataraID: "avatar 4", dateCreated: now.addingTimeInterval(days: -1), dateModified: now.addingTimeInterval(hours: -10))
            
        ]
    }
}
