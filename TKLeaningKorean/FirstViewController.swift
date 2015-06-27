//
//  FirstViewController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/05/21.
//  Copyright (c) 2015年 GG. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topLeftAnimationView: UIImageView!
    @IBOutlet weak var topRightAnimationView: UIImageView!
    @IBOutlet weak var animationContentView: UIView!
    
    var isTopAnimationOpen: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.tableView.rowHeight = 135.0
        tableView.registerNib(UINib(nibName: "TKLectureTableViewCell", bundle: nil), forCellReuseIdentifier: "LuctureCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Private Method -
    /**
    스크롤의 상승하는 숫자에 비례해서 처리를 하느냐?
    */
    func characterAnimation(point:CGPoint) {

            UIView.animateWithDuration(0.3, animations: { () -> Void in
                var leftFrame:CGRect = self.topLeftAnimationView.frame
                var rightFrame:CGRect = self.topRightAnimationView.frame

                if self.isTopAnimationOpen == false && point.y > CGRectGetHeight(self.animationContentView.frame)/4 {
                    NSLog("open")
                    leftFrame.origin.x = CGRectGetWidth(leftFrame) * (-1)
                    rightFrame.origin.x = CGRectGetWidth(rightFrame)
                    self.isTopAnimationOpen = true
                    
                } else if self.isTopAnimationOpen == true && point.y < CGRectGetHeight(self.animationContentView.frame)/4 {
                    NSLog("close")
                    leftFrame.origin.x = 0
                    rightFrame.origin.x = 0
                    self.isTopAnimationOpen = false
                    
                }
                self.topLeftAnimationView.frame = leftFrame
                self.topRightAnimationView.frame = rightFrame;
                
                }, completion: { (Bool) -> Void in
                    
            })
    }
    
    // MARK: - UITableViewDelegate -
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView {
        
        let headerView:UIView = UIView(frame: CGRectMake(0, 0, CGRectGetWidth(UIScreen.mainScreen().bounds), 120))
        return headerView
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 10
    }

    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return self.tableView.rowHeight
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("LuctureCell", forIndexPath: indexPath) as! TKLectureTableViewCell

        cell.titleLabel.text = "title OK"
        cell.contentLabel.text = "content OK"
        
        return cell
    }
    
    func tableView(tableView: UITableView?, didSelectRowAtIndexPath indexPath:NSIndexPath!) {
        print("selected \(indexPath.row)")
        
        performSegueWithIdentifier("mySegueID", sender: indexPath)
    }
    
    // MARK : - UIScrollViewDelegate
    func scrollViewDidScroll(scrollView: UIScrollView) {
       
//        NSLog("scrollViewDidScroll  %f", scrollView.contentOffset.y)
        self.characterAnimation(scrollView.contentOffset)
    }
    
    
}

