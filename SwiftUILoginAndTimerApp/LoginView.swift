//
//  LoginView.swift
//  SwiftUILoginAndTimerApp
//
//  Created by Юрий Скворцов on 30.04.2022.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var isValidate: Bool {
        userManager.user.name.count > 2
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 50) {
                TextField("Enter your name...", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                Text("\(userManager.user.name.count)")
                    .padding(.leading, -40)
                    .foregroundColor(isValidate ? .green : .red)
            }
            Button(action: { registerUser() }) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled(!isValidate)
        }
        .padding()
    }
    
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegistered.toggle()
            StorageManager.shared.save(user: userManager.user)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(UserManager())
    }
}
