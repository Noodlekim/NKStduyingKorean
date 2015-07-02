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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        self.setContent(0, contents: [1,2,3,4])
    }

    // MARK: - Private
    private func setContent(selectedIndex:NSInteger, contents:NSArray?) {
        
        if var tempContents: NSArray = contents {

            let contentCount: CGFloat = CGFloat(tempContents.count)

            var contentViewFrame: CGRect = self.contentView.frame
            contentViewFrame.size.width = contentCount * CGRectGetWidth(self.contentScrollView.frame)
            self.contentView.frame = contentViewFrame
            self.contentView.backgroundColor = UIColor.redColor()

//            var contraint1: NSLayoutConstraint = NSLayoutConstraint(item: self.contentView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 0, constant: CGFloat(tempContents.count) * CGRectGetWidth(self.contentView.frame))
//            
//            var contraint2: NSLayoutConstraint = NSLayoutConstraint(item: self.contentView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 0, constant: CGRectGetHeight(self.contentScrollView.frame))
//
//            
//            self.contentView.addConstraint(contraint1)
//            self.contentView.addConstraint(contraint2)
//            self.contentView.setNeedsDisplay()
//            self.contentScrollView.setNeedsDisplay()
            
            
//            for i in 0..<tempContents.count {
//                
//                let contentImageView: UIButton = UIButton(frame: self.contentScrollView.bounds)
////                contentImageView.setBackgroundImage(UIImage(named: "contemtSample"), forState: .Normal)
//                var imageViewFrame: CGRect = contentImageView.frame
//                imageViewFrame.origin.x = CGFloat(i) * CGRectGetWidth(imageViewFrame)
//                imageViewFrame.size = contentScrollView.bounds.size
//                contentImageView.frame = imageViewFrame
////                contentImageView.backgroundColor = UIColor.yellowColor()
//                print("contentImageView frame\(contentImageView.frame)\n")
//
//                self.contentView.addSubview(contentImageView)
//            }
//            
            self.contentScrollView.contentSize = self.contentView.frame.size
//            print("contentView frame\(self.contentView.frame)\n")
//            print("scrollview frame \(self.contentScrollView.frame)\n")
//            print("scrollview contentSize\(self.contentScrollView.contentSize)\n")

        }
    }
    
    // MARK: - Action

    @IBAction func popupViewController() {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func playSound() {
        
        soundManager.playsound("")
    }
}
