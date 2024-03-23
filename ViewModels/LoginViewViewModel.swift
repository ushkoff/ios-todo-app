//
//  LoginViewViewModel.swift
//  KNULabMobileTodoList
//
//  Created by Ivan Ushkov on 22.03.2024.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject  {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }

    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.isEmpty else {
            errorMessage = "Заповніть всі поля"
            return false
        }
        
        // email@example.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Введіть правильну пошту"
            return false
        }
        
        return true
    }
}
