//
//  RNStringViewCell.swift
//  AutoSizeTableViewHeight
//
//  Created by 婉卿容若 on 2016/11/10.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class RNStringViewCell: UITableViewCell {

    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var stringLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(text: String){
        stringLabel.text  = text
    }
    
}
