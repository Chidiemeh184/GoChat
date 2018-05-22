//
//  ChatViewController.swift
//  GoChat
//
//  Created by Chidi Emeh on 5/16/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import UIKit
import JSQMessagesViewController

class ChatViewController: JSQMessagesViewController {
    
    var messages = [JSQMessage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.senderId = "1"
        self.senderDisplayName = "User1"

    }
    
    override func didPressSend(_ button: UIButton!, withMessageText text: String!, senderId: String!, senderDisplayName: String!, date: Date!) {
        
        messages.append(JSQMessage(senderId: senderId, displayName: senderDisplayName, text: text))
        print(text)
    }

    override func didPressAccessoryButton(_ sender: UIButton!) {
        print("Accessory button tapped")
    }
    
    @IBAction func logoutTapped(sender: AnyObject){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyboard.instantiateViewController(withIdentifier: "LogInVC") as! LogInViewController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = navVC
    }

}
