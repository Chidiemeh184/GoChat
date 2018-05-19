//
//  LogInViewController.swift
//  GoChat
//
//  Created by Chidi Emeh on 5/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit
import FirebaseAuth
import GoogleSignIn

class LogInViewController: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate{

    
    @IBOutlet weak var anonymousButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anonymousButton.layer.borderWidth = 2.0
        anonymousButton.layer.borderColor = UIColor.black.cgColor
        GIDSignIn.sharedInstance().clientID = "391760886408-g6eb552f3qc6o5vu130r37h1e0bru5kj.apps.googleusercontent.com"
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        
    }


    
    @IBAction func logInAnonymouslyTapped(_ sender: Any) {
        Helper.helper.anonymousUserLoggedIn()
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        Helper.helper.logInwithGoogle(authentication: user.authentication)
    }

    
    @IBAction func googleButtonTapped(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
    }
    
}
