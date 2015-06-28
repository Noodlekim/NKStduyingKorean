//
//  TKCustomSegue.swift
//  TKLeaningKorean
//
//  Created by KimGiBong on 2015/06/28.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit

class TKCustomSegue: UIStoryboardSegue {

    override func perform() {
        
        let nvc: UINavigationController = self.destinationViewController as! UINavigationController
        
        self.sourceViewController.showViewController(self.destinationViewController, sender: nil)

    }
}
