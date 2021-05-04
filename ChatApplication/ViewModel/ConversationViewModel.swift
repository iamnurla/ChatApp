//
//  ConversationViewModel.swift
//  ChatApplication
//
//  Created by Yersultan Nalikhan on 16.03.2021.
//

import Foundation

struct ConversationViewModel {
    private let conversation: Conversation

    var profileImageUrl:  URL? {
        return URL(string: conversation.user.profileImageUrl)
    }
    
    var timestamp: String {
        let date = conversation.message.timeStamp.dateValue()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        return dateFormatter.string(from: date)
    }
    
    init(conversation: Conversation) {
        self.conversation = conversation
        
    }
}
