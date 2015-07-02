//
//  TKContentDetailViewController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/06/28.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit

class TKContentDetailViewController: UIViewController {
    
    
    @IBOutlet weak var contentScrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    let soundManager:TKSoundManager = TKSoundManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setContent(0, contents: [1,2,3,4])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillLayoutSubviews() {
     
        // nib, storyboardのフレームが調整させる。
    }
    
    override func viewDidLayoutSubviews() {
        // コンテンツによるフレームを調整する必要がある場合ここで。
        self.setSubViewFrame()
    }
    
    // MARK: - Private
    private func setContent(selectedIndex:NSInteger, contents:NSArray?) {
        
        if let tempContents: NSArray = contents {
            
            let contentCount: CGFloat = CGFloat(tempContents.count)
            
            var contentViewFrame: CGRect = self.contentView.frame
            contentViewFrame.size.width = contentCount * CGRectGetWidth(self.contentScrollView.frame)
            self.contentScrollView.contentSize = contentViewFrame.size
            self.contentView.frame = contentViewFrame
            
            for i in 0..<tempContents.count {
                
                let contentImageView: UIButton = UIButton(frame: self.contentScrollView.bounds)
                contentImageView.setBackgroundImage(UIImage(named: "contemtSample"), forState: .Normal)
                var imageViewFrame: CGRect = contentImageView.frame
                imageViewFrame.origin.x = CGFloat(i) * CGRectGetWidth(imageViewFrame)
                imageViewFrame.origin.y = -20
                imageViewFrame.size = contentScrollView.bounds.size
                contentImageView.frame = imageViewFrame
                contentImageView.addTarget(self, action: "playSound", forControlEvents: UIControlEvents.TouchUpInside)
                print("contentImageView frame\(contentImageView.frame)\n")
                
                self.contentView.addSubview(contentImageView)
            }
            
//            print("contentView frame\(self.contentView.frame)\n")
//            print("scrollview frame \(self.contentScrollView.frame)\n")
//            print("scrollview contentSize\(self.contentScrollView.contentSize)\n")
            
        }
    }
    
    private func setSubViewFrame() {
        
        let contentCount:CGFloat = CGFloat(contentView!.subviews.count)
        
        for i in 0..<contentView!.subviews.count {
            
            let contentImageView: UIButton = contentView.subviews[i] as! UIButton
            var imageViewFrame: CGRect = contentImageView.frame
            imageViewFrame.size = contentScrollView.frame.size
            imageViewFrame.origin.x = CGFloat(i) * CGRectGetWidth(imageViewFrame)
            contentImageView.frame = imageViewFrame
            print("contentImageView frame\(contentImageView.frame)\n")
        }
        
        let contraint: NSLayoutConstraint = NSLayoutConstraint(item: self.contentView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: contentCount * CGRectGetWidth(self.contentScrollView.frame))
        self.view.addConstraint(contraint)
        self.view.setNeedsDisplay()
        
        print("contentView frame\(self.contentView.frame)\n")
        print("scrollview frame \(self.contentScrollView.frame)\n")
        print("scrollview contentSize\(self.contentScrollView.contentSize)\n")

    }
    
    // MARK: - Action
    
    @IBAction func popupViewController() {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func playSound() {
        
        soundManager.playsound("")
    }
}
