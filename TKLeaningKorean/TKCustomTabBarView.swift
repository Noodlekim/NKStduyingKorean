//
//  TKCustomTabBarView.swift
//  TKLeaningKorean
//
//  Created by KimGiBong on 2015/06/29.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit

protocol TKCustomTabBarViewDelegate {
    func didSelectMunuButton(selectedButton: UIButton)
}

class TKCustomTabBarView: UIView {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var firstMenuButton:UIButton!
    @IBOutlet weak var secondMenuButton:UIButton!
    @IBOutlet weak var thirdMenuButton:UIButton!
    @IBOutlet weak var fourthMenuButton:UIButton!

    var selectedButton:UIButton! = nil
    var delegate: TKCustomTabBarViewDelegate! = nil

    override init(frame: CGRect) {
        
        var f: CGRect = CGRectZero
        f.size.width = CGRectGetWidth(UIScreen.mainScreen().bounds)
        f.size.height = 49

        super.init(frame: UIScreen.mainScreen().bounds)
        self.frame = f

        NSBundle.mainBundle().loadNibNamed("TKCustomTabBarView", owner: self, options: nil)
        NSLog("self.contentView %@", self.contentView)
        self.addSubview(self.contentView)
        
        let tabbarWidth:CGFloat = CGRectGetWidth(UIScreen.mainScreen().bounds)
        let constaraint:NSLayoutConstraint = NSLayoutConstraint(item: self.firstMenuButton, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 0, constant:tabbarWidth/4)
        NSLog("tabbarWidth %f", tabbarWidth)
        self.contentView.addConstraint(constaraint)
        self.contentView.setNeedsDisplay()

        self.contentView.frame = f

        selectedButton = self.firstMenuButton
        selectedButton.selected = true
    }
    
    @IBAction func didSelectMenuButton (menuButton:UIButton) {

        if self.delegate != nil {

            selectedButton.selected = false
            menuButton.selected = true
            self.delegate.didSelectMunuButton(menuButton)
            selectedButton = menuButton

        }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}
