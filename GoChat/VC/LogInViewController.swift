//
//  LogInViewController.swift
//  GoChat
//
//  Created by Chidi Emeh on 5/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {

    
    @IBOutlet weak var anonymousButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anonymousButton.layer.borderWidth = 2.0
        anonymousButton.layer.borderColor = UIColor.black.cgColor
    }


    
    @IBAction func logInAnonymouslyTapped(_ sender: Any) {
        
        Auth.auth().signInAnonymously() { (user, error) in
            if error == nil {
                print("USER : \(user)")
            }else{
                print(error)
            }
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyboard.instantiateViewController(withIdentifier: "NavigationVC") as! UINavigationController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = navVC
    }
    


    
    @IBAction func googleButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyboard.instantiateViewController(withIdentifier: "NavigationVC") as! UINavigationController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = navVC
    }
    
}
