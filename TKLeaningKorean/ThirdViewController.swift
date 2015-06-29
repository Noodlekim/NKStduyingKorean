//
//  ThirdViewController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/05/21.
//  Copyright (c) 2015年 GG. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "キャラクターを選択"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor()] // Title Color

        self.navigationController?.navigationBar.barTintColor = UIColor.orangeColor() // Bar Color
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor() // Back Button Color
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
