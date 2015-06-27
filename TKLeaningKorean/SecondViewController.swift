//
//  SecondViewController.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/05/21.
//  Copyright (c) 2015年 GG. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.rowHeight = 135.0
        tableView.registerNib(UINib(nibName: "TKFavoriteTableViewCell", bundle: nil), forCellReuseIdentifier: "FavoriteCell")


    }

    // MARK: - Private Method -
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UITableViewDelegate -
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 10
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return self.tableView.rowHeight
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FavoriteCell", forIndexPath: indexPath) as! TKFavoriteTableViewCell
        
//        cell.leftKoreanLbl.text = ""
//        cell.leftJapaneseLbl.text = ""
//
//        cell.rightKoreanLbl.text = ""
//        cell.rightJapaneseLbl.text = ""

        return cell
    }
    
    func tableView(tableView: UITableView?, didSelectRowAtIndexPath indexPath:NSIndexPath!) {
        print("selected \(indexPath.row)")
        performSegueWithIdentifier("ContentDetailSegueID", sender: indexPath)
        
    }

}

