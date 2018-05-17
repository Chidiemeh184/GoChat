//
//  ChatViewController.swift
//  GoChat
//
//  Created by Chidi Emeh on 5/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func logoutTapped(sender: AnyObject){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyboard.instantiateViewController(withIdentifier: "LogInVC") as! LogInViewController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = navVC
    }

}
