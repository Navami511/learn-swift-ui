//
//  SideMenuRowType.swift
//  sample
//
//  Created by Navami Ajay on 03/11/23.
//

import Foundation

enum SideMenuRowType: Int, CaseIterable{
    case home = 0
    case favorite
    case chat
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        case .chat:
            return "Images"
        case .profile:
            return "User"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "home"
        case .favorite:
            return "favorite"
        case .chat:
            return "gallery"
        case .profile:
            return "user"
        }
    }
}
