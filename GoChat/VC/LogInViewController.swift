//
//  LogInViewController.swift
//  GoChat
//
//  Created by Chidi Emeh on 5/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet weak var anonymousButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anonymousButton.layer.borderWidth = 2.0
        anonymousButton.layer.borderColor = UIColor.black.cgColor
    }


    
    @IBAction func logInAnonymouslyTapped(_ sender: Any) {
    }
    

    @IBAction func googleButtonTapped(_ sender: Any) {
    }
    
}
