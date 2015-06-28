//
//  TKRootViewController.swift
//  TKLeaningKorean
//
//  Created by KimGiBong on 2015/06/28.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit

class TKRootViewController: UIViewController {

    @IBOutlet weak var customTabbar: UIView!
    @IBOutlet weak var firstMenuButton: UIButton!
    @IBOutlet weak var seondMenuButton: UIButton!
    @IBOutlet weak var thirdMenuButton: UIButton!
    @IBOutlet weak var fourthMenuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        performSegueWithIdentifier("firstMenuLoadSegue", sender: self)
//        performSegueWithIdentifier("MadePeopleSegueID", sender: nil)
//        performSegueWithIdentifier("MadePeopleSegueID", sender: nil)
//        performSegueWithIdentifier("MadePeopleSegueID", sender: nil)
        self.firstMenuButton.selected = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    override func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        
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
