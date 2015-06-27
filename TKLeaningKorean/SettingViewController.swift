//
//  SettingViewController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/05/21.
//  Copyright (c) 2015年 GG. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.rowHeight = 78
        tableView.registerNib(UINib(nibName: "TKSettingTableViewCell", bundle: nil), forCellReuseIdentifier: "SettingNotificationCell")
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

    // MARK: - UITableViewDelegate -
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 2
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return self.tableView.rowHeight
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SettingNotificationCell", forIndexPath: indexPath) as! TKSettingTableViewCell
        
        if indexPath.row == 1 {
            cell.descriptionLbl.text = "アプリを作った人たち"
            cell.notificationSwitch.hidden = true
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView?, didSelectRowAtIndexPath indexPath:NSIndexPath!) {
        print("selected \(indexPath.row)")
        if indexPath.row == 1 {
            performSegueWithIdentifier("MadePeopleSegueID", sender: indexPath)
        }        
    }
}
