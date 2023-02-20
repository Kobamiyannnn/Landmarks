//
//  Profile.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/20
//  
//  Abstract:
//  A representation of user profile data.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "g_kumar")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "⛄️"

        var id: String { rawValue }
    }
}
