//
//  TKLectureTableViewCell.swift
//  TKLeaningKorean
//
//  Created by user on H27/05/22.
//  Copyright (c) 平成27年 GG. All rights reserved.
//

import UIKit

class TKLectureTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
