//
//  LoginTFView.swift
//  SwiftUILoginAndTimerApp
//
//  Created by Юрий Скворцов on 30.04.2022.
//

import SwiftUI

struct LoginTFView: View {
    @State private var login = ""
    private var isValidate = false
    
    var body: some View {
        VStack {
            HStack(spacing: 50) {
                TextField("Enter your name...", text: $login)
                    .multilineTextAlignment(.center)
                Text("\(login.count)")
                    .padding(.leading, -40)
                    .foregroundColor(isValidate ? .green : .red)
            }
            Button(action: {}) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled(!isValidate)
        }
    }
}

struct LoginTFView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTFView()
    }
}
