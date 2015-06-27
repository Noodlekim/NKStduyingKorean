//
//  MainTabBarController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/06/26.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    @IBOutlet weak var gesture:UIGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let colorKey = UIColor(red: 255/255, green: 158/255, blue: 35/255, alpha: 1.0)
        
        UITabBar.appearance().tintColor = colorKey

        self.view.addGestureRecognizer(self.gesture)
        self.navigationController?.hidesBarsOnTap = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gesture(sender:UIGestureRecognizer) {
        NSLog("ok testing")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
