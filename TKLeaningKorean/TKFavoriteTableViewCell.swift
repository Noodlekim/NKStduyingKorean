//
//  TKFavoriteTableViewCell.swift
//  TKLeaningKorean
//
//  Created by NoodleKim on 2015/06/28.
//  Copyright © 2015年 GG. All rights reserved.
//

import UIKit



class TKFavoriteTableViewCell: UITableViewCell {
    
    @IBOutlet weak var leftKoreanLbl: UILabel!
    @IBOutlet weak var leftJapaneseLbl: UILabel!
    @IBOutlet weak var rightKoreanLbl: UILabel!
    @IBOutlet weak var rightJapaneseLbl: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }    
}
