//
//  MessageScene.swift
//  GPSTracker
//
//  Created by zerolive on 2017. 10. 7..
//  Copyright © 2017년 Leonardo204. All rights reserved.
//

import Foundation

class MessageScene: UIViewController {
    
    @IBOutlet weak var MenuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
       
        MenuButton.target = self.revealViewController()
        MenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
}
