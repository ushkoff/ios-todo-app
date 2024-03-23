//
//  User.swift
//  KNULabMobileTodoList
//
//  Created by Ivan Ushkov on 22.03.2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
