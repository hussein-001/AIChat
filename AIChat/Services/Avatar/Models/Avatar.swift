//
//  Avatar.swift
//  AIChat
//
//  Created by Hussien Awada on 19/07/2025.
//

import Foundation

struct AvatarModel: Hashable {
    
    let avatarId: String
    let name: String?
    let characterOption: CharacterOption?
    let characterAction: CharacterAction?
    let characterLocation: CharacterLocation?
    let profileImageName: String?
    let authorId: String?
    let dateCreated: Date?
    
    init(
        avatarId: String,
        name: String? = nil,
        characterOption: CharacterOption? = nil,
        characterAction: CharacterAction? = nil,
        characterLocation: CharacterLocation? = nil,
        profileImageName: String? = nil,
        authorId: String? = nil,
        dateCreated: Date? = nil
    ) {
        self.avatarId = avatarId
        self.name = name
        self.characterOption = characterOption
        self.characterAction = characterAction
        self.characterLocation = characterLocation
        self.profileImageName = profileImageName
        self.authorId = authorId
        self.dateCreated = dateCreated
    }
    
    var characterDescription: String {
        AvatarDescriptionBuilder(avatar: self).characterDescription
    }
    
    static var mock: AvatarModel {
        mocks[0]
    }
    
    static var mocks: [AvatarModel] {
        [
        AvatarModel(
            avatarId: UUID().uuidString,
            name: "Alpha",
            characterOption: .alien,
            characterAction: .drinking,
            characterLocation: .desert,
            profileImageName: Constants.randomImageUrl,
            authorId: UUID().uuidString,
            dateCreated: .now
        ),
        AvatarModel(
            avatarId: UUID().uuidString,
            name: "Beta",
            characterOption: .woman,
            characterAction: .shopping,
            characterLocation: .mall,
            profileImageName: Constants.randomImageUrl,
            authorId: UUID().uuidString,
            dateCreated: .now
        ),
        AvatarModel(
            avatarId: UUID().uuidString,
            name: "Gamma",
            characterOption: .man,
            characterAction: .drinking,
            characterLocation: .musem,
            profileImageName: Constants.randomImageUrl,
            authorId: UUID().uuidString,
            dateCreated: .now
        ),
        AvatarModel(
            avatarId: UUID().uuidString,
            name: "Delta",
            characterOption: .cat,
            characterAction: .fighting,
            characterLocation: .city,
            profileImageName: Constants.randomImageUrl,
            authorId: UUID().uuidString,
            dateCreated: .now
        )
        
        ]
    }
}

struct AvatarDescriptionBuilder {
    let characterOption: CharacterOption
    let characterAction: CharacterAction
    let characterLocation: CharacterLocation
    
    init(characterOption: CharacterOption, characterAction: CharacterAction, characterLocation: CharacterLocation) {
        self.characterOption = characterOption
        self.characterAction = characterAction
        self.characterLocation = characterLocation
    }
    
    init(avatar: AvatarModel) {
        self.characterOption = avatar.characterOption ?? .default
        self.characterAction = avatar.characterAction ?? .default
        self.characterLocation = avatar.characterLocation ?? .default
    }
    
    var characterDescription: String {
        return "A \(characterOption.rawValue) that is \(characterAction.rawValue) smilling in the \(characterLocation.rawValue)"
    }
}

enum CharacterOption: String {
    case man, woman, alien, dog, cat
    
    static var `default`: Self {
        .man
    }
}

enum CharacterAction: String {
    case smiling, sitting, eating, drinking, walking, shopping, studying, working, relaxing, fighting, crying
    
    static var `default`: Self {
        .sitting
    }
}

enum CharacterLocation: String {
    case park, mall, musem, city, desert, forest, space
    
    static var `default`: Self {
        .mall
    }
}
