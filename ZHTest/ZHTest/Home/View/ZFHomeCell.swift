//
//  ZFHomeCell.swift
//  ZHTest
//
//  Created by apple on 16/7/15.
//  Copyright © 2016年 QZ. All rights reserved.
//

import UIKit

class ZFHomeCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var moreImageView: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        dk_backgroundColorPicker = CELL_COLOR
        titleLabel.dk_backgroundColorPicker = CELL_COLOR
        selectionStyle = .None
        
        titleLabel.text = "测试"
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
