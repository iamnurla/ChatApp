//
//  ProfileViewModel.swift
//  ChatApplication
//
//  Created by Yersultan Nalikhan on 21.03.2021.
//

import Foundation

enum ProfileViewModel: Int, CaseIterable {
    case acountInfo
    case settings
    
    var description: String {
        switch self {
        case .acountInfo: return "Account Info"
        case .settings: return "Settings"
        }
    }
    
    var iconImageName: String {
        switch self {
        case .acountInfo: return "person.circle"
        case .settings: return "gear"
        }
    }
    
}
