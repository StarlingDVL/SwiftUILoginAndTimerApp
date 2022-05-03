//
//  SwiftUILoginAndTimerAppApp.swift
//  SwiftUILoginAndTimerApp
//
//  Created by Юрий Скворцов on 30.04.2022.
//

import SwiftUI

@main
struct SwiftUILoginAndTimerAppApp: App {
    private let user = StorageManager.shared.uploadUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
