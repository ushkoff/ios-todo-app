//
//  KNULabMobileTodoListApp.swift
//  KNULabMobileTodoList
//
//  Created by Ivan Ushkov on 22.03.2024.
//

import FirebaseCore
import SwiftUI

@main
struct KNULabMobileTodoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
