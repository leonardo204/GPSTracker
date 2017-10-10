//
//  SettingScene.swift
//  GPSTracker
//
//  Created by zerolive on 2017. 10. 7..
//  Copyright © 2017년 Leonardo204. All rights reserved.
//

import UIKit

class SettingScene: UIViewController {

    @IBOutlet weak var MenuButon: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        MenuButon.target = self.revealViewController()
        MenuButon.action = #selector(SWRevealViewController.revealToggle(_:))
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
