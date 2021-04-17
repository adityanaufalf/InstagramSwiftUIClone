//
//  AuthViewModel.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 17/04/21.
//

import Foundation
import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func doLogin(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to signed in : \(error.localizedDescription)")
            } else {
                guard let user = result?.user else { return }
                self.userSession = user
            }
        }
    }
    
    func doSignUp(withEmail email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to signed up : \(error.localizedDescription)")
            } else {
                guard let user = result?.user else { return }
                self.userSession = user
            }
        }
    }
    
    func signOut() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword(){
        print("This is reset")

    }
    
    func fetchUser() {
        print("This is fetch")

    }
}
