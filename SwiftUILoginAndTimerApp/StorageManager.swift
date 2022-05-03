//
//  StorageManager.swift
//  SwiftUILoginAndTimerApp
//
//  Created by Юрий Скворцов on 03.05.2022.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func uploadUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func deleteUser(userManager: UserManager) {
        userData = nil
        userManager.user.name = ""
        userManager.user.isRegistered = false
    }
}
