//
//  HoursCell.swift
//  theWearApplication
//
//  Created by Maxim Reshetov on 18/04/2019.
//  Copyright © 2019 Maxim Reshetov. All rights reserved.
//

import UIKit

class HoursCell: UICollectionViewCell {
    
    let hourLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .center
        return label
    }()
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let tempLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(hourLabel)
        addSubview(iconImageView)
        addSubview(tempLabel)
        
        hourLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 35)
        iconImageView.frame = CGRect(x: 32.5, y: 35, width: 30, height: 30)
        tempLabel.frame = CGRect(x: 0, y: 70, width: 100, height: 35)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
