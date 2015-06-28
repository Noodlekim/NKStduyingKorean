//
//  MainTabBarController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/06/26.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {

    @IBOutlet weak var gesture:UIGestureRecognizer!
    @IBOutlet weak var tabbar:UITabBar!
    
    var isShowTabbar: Bool = true
    var isAnimating: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.hidesBarsOnTap = true
        self.delegate = self

    }

    override func viewWillLayoutSubviews() {

        var tabFrame:CGRect = self.tabbar.frame
        var tabViewFrame:CGRect = self.view.frame
        tabViewFrame.size.height = CGRectGetHeight(UIScreen.mainScreen().bounds)
            + CGRectGetHeight(tabFrame)
        self.view.frame = tabViewFrame

        tabFrame.origin.y = CGRectGetHeight(UIScreen.mainScreen().bounds)-CGRectGetHeight(tabFrame)
        self.tabbar.frame = tabFrame

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gesture(sender:UIGestureRecognizer) {
        NSLog("ok testing")
    }

    // MARK: - UITableViewDelegate
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {

        NSLog("selected Menu %d", tabBarController.selectedIndex)
        
//        let colorKey = UIColor(red: 255/255, green: 158/255, blue: 35/255, alpha: 1.0)
        UITabBar.appearance().backgroundColor = UIColor.greenColor()
 
        return true
    }
    
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        
    }
    
    // MARK: - Public
    // TODO : 無駄に動かないように対応。
    func showTabbar(isShow: Bool) {

        UIView.animateWithDuration(0.3, animations: { () -> Void in
            if self.isAnimating {
                return
            }
            self.isAnimating = true
            
            var tabFrame:CGRect = self.tabbar.frame

            if isShow && !self.isShowTabbar {
                tabFrame.origin.y = CGRectGetHeight(UIScreen.mainScreen().bounds)-CGRectGetHeight(tabFrame)

            } else if !isShow && self.isShowTabbar {
                tabFrame.origin.y = CGRectGetHeight(UIScreen.mainScreen().bounds)
            }
            self.tabbar.frame = tabFrame
            
            }, completion: { (finished: Bool) -> Void in
                self.isShowTabbar = !self.isShowTabbar
                self.isAnimating = false
       })
    }
}
