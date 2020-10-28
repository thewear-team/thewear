//
//  UseCurrentLocationCell.swift
//  theWearApp
//
//  Created by Max Reshetov on 25/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class UseCurrentLocationCell: UITableViewCell {
    
    let location: UILabel = {
        let label = UILabel()
        label.text =  NSLocalizedString("Use current location", comment: "")
        label.textColor = UIColor.customBlack
        label.alpha = 0.7
        label.textAlignment = .left
        label.font = UIFont(name: "AvenirNext-Medium", size: 22)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(location)
        location.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: Frames.shared.height * 0.05)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
