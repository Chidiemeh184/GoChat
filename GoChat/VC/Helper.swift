//
//  Helper.swift
//  GoChat
//
//  Created by Chidi Emeh on 5/17/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import Foundation
import FirebaseAuth
import GoogleSignIn

class Helper {
    static let helper = Helper()
    
    func anonymousUserLoggedIn(){
        Auth.auth().signInAnonymously() { (user, error) in
            if error == nil {
                print("USER : \(String(describing: user))")
                self.switchToNavigationViewController()
            }else{
                print(error!)
            }
        }
        
        
    }
    
    func logInwithGoogle(authentication : GIDAuthentication){
        _ = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        
        Auth.auth().signInAnonymously { (authData, error) in
            if error != nil {
                print(error!)
                return
            }else {
                self.switchToNavigationViewController()
            }
        }
        
    }
    
    private func switchToNavigationViewController(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyboard.instantiateViewController(withIdentifier: "NavigationVC") as! UINavigationController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = navVC
    }
    
    
    
}
