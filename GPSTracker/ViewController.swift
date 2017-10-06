//
//  ViewController.swift
//  GPSTracker
//
//  Created by zerolive on 2017. 10. 6..
//  Copyright © 2017년 Leonardo204. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var mailTextForm: UITextField!
    @IBOutlet weak var passwdTextForm: UITextField!
    @IBOutlet weak var regButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let user = FIRAuth.auth()?.currentUser {
            mailTextForm.placeholder = "already logged in"
            passwdTextForm.placeholder = "already logged in"
            loginButton.setTitle("Logout", for: .normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func processRegButton(_ sender: Any) {
    }
    @IBAction func processLoginButton(_ sender: Any) {
        FIRAuth.auth()?.signIn(withEmail: mailTextForm.text!, password: passwdTextForm.text!) { (user, error) in
            if user != nil {
                print("login success")
            } else {
                print("login failed")
            }
        }
        
    }
    
}

