//
//  CharacterDetailViewController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/06/28.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "キャラクターを選択"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private Method -
    @IBAction func popupViewController() {
        self.navigationController?.popViewControllerAnimated(true)
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
