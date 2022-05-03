//
//  UserManager.swift
//  SwiftUILoginAndTimerApp
//
//  Created by Юрий Скворцов on 03.05.2022.
//

import Combine

final class UserManager: ObservableObject {
   @Published var user = User()
    
    init(){}
    
    init(user: User) {
        self.user = user
    }
}
