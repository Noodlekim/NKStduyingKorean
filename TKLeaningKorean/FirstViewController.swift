//
//  FirstViewController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/05/21.
//  Copyright (c) 2015年 GG. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        //        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        //        cell.textLabel?.text = "test content"
        
//        var cell:TKLectureTableViewCell = tableView.dequeueReusableCellWithIdentifier("LuctureCell") as! TKLectureTableViewCell
//        cell.conf
//        if cell == nil {
//           cell = TKLectureTableViewCell()
//        }
        
        cell.textLabel?.text = "text contents desu."
        return cell
    }
    
    func tableView(tableView: UITableView?, didSelectRowAtIndexPath indexPath:NSIndexPath!) {
        println("selected \(indexPath.row)")
    }

    
}

