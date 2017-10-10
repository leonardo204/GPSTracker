//
//  ViewController.swift
//  GPSTracker
//
//  Created by zerolive on 2017. 10. 6..
//  Copyright © 2017년 Leonardo204. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Open: UIBarButtonItem!
    @IBOutlet weak var Label: UILabel!
    
    var varView = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Open.target = self.revealViewController()
        Open.action = #selector(SWRevealViewController.revealToggle(_:))
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        if (varView == 0) {
            Label.text = "Strings"
        } else {
            Label.text = "Ohters"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

