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
    @IBOutlet weak var trashBoxView:UIButton!

//    @IBOutlet weak var longGesture: UILongPressGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: "TKFavoriteTableViewCell", bundle: nil), forCellReuseIdentifier: "FavoriteCell")

    }

    // MARK: - Private Method -
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Action
    func longPressAction(gesture:UIGestureRecognizer) {
        UIView.animateWithDuration(0.3) { () -> Void in
            self.trashBoxView.alpha = 1.0
        }
    }
    
    @IBAction func tappedTrashBoxButton(sender:UIButton!) {
        
        print("tappedTrashBoxButton")
        UIView.animateWithDuration(0.3) { () -> Void in
            self.trashBoxView.alpha = 0.0
        }
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
        let longGesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressAction:")
        cell.addGestureRecognizer(longGesture)
        return cell
    }
    
    func tableView(tableView: UITableView?, didSelectRowAtIndexPath indexPath:NSIndexPath!) {
        print("selected \(indexPath.row)")
        performSegueWithIdentifier("ContentDetailSegueID", sender: indexPath)
        
    }

}

