//
//  RNStringTableViewCell.swift
//  AutoSizeTableViewHeight
//
//  Created by 婉卿容若 on 16/8/29.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class RNStringTableViewCell: UITableViewCell {
    
    var stringLabel: UILabel!
    
    var myString: String? = nil
//    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//        
//        self.contentView.addSubview(stringLabel)
//        
//        stringLabel.text = "Runtime是一套比较底层的纯C语言API，包含了很多底层的C语言API。在我们平时编写的OC代码中，程序运行时，其实最终都是转成了Runtime的C语言代码。Runtime是开源的，你可以去这里下载Runtime的源码。"
//        
//        let top = NSLayoutConstraint(item: stringLabel,
//                                     attribute: .Top,
//                                     relatedBy: .Equal,
//                                     toItem: contentView,
//                                     attribute: .Top,
//                                     multiplier: 1.0,
//                                     constant: 10.0)
//        
//        let left = NSLayoutConstraint(item: stringLabel,
//                                      attribute: .Leading,
//                                      relatedBy: .Equal,
//                                      toItem: contentView,
//                                      attribute: .Leading,
//                                      multiplier: 1.0,
//                                      constant: 0.0)
//        
//        let bottom = NSLayoutConstraint (item: stringLabel,
//                                         attribute: .Bottom,
//                                         relatedBy: .Equal,
//                                         toItem: contentView,
//                                         attribute: .Bottom,
//                                         multiplier: 1.0,
//                                         constant: 10.0)
//        
//        let right = NSLayoutConstraint(item: stringLabel,
//                                       attribute: .Trailing,
//                                       relatedBy: .Equal,
//                                       toItem: contentView,
//                                       attribute: .Trailing,
//                                       multiplier: 1.0,
//                                       constant: 0.0)
//        
//        stringLabel.translatesAutoresizingMaskIntoConstraints = false
//        stringLabel.addConstraints([top, left, bottom, right])
//        
//    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        stringLabel = UILabel()
        self.contentView.addSubview(stringLabel)
        
        stringLabel.text = "Runtime是一套比较底层的纯C语言API，包含了很多底层的C语言API。在我们平时编写的OC代码中，程序运行时，其实最终都是转成了Runtime的C语言代码。Runtime是开源的，你可以去这里下载Runtime的源码。"
        
        let top = NSLayoutConstraint(item: stringLabel,
                                     attribute: .Top,
                                     relatedBy: .Equal,
                                     toItem: contentView,
                                     attribute: .Top,
                                     multiplier: 1.0,
                                     constant: 10.0)
        
        let left = NSLayoutConstraint(item: stringLabel,
                                      attribute: .Leading,
                                      relatedBy: .Equal,
                                      toItem: contentView,
                                      attribute: .Leading,
                                      multiplier: 1.0,
                                      constant: 0.0)
        
        let bottom = NSLayoutConstraint (item: stringLabel,
                                         attribute: .Bottom,
                                         relatedBy: .Equal,
                                         toItem: contentView,
                                         attribute: .Bottom,
                                         multiplier: 1.0,
                                         constant: 10.0)
        
        let right = NSLayoutConstraint(item: stringLabel,
                                       attribute: .Trailing,
                                       relatedBy: .Equal,
                                       toItem: contentView,
                                       attribute: .Trailing,
                                       multiplier: 1.0,
                                       constant: 0.0)
        
        stringLabel.translatesAutoresizingMaskIntoConstraints = false
        stringLabel.addConstraints([top, left, bottom, right])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configCell(string: String?){
//        myString = string
//        
//        
//        guard let realString = myString else{
//            return
//        }
        
        //stringLabel.text = realString
        
    }

}
