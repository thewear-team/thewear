//
//  DayCell.swift
//  theWearApp
//
//  Created by Max Reshetov on 12/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

class DayCell: UICollectionViewCell {
    
    let underView = UIView()
    
    let dayLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.font = Frames.shared.mediumSmallFont
        label.text = "June 21, friday"
        return label
    }()
    
    let tempLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = Frames.shared.mediumSmallFont
        label.textColor = UIColor.white
        label.text = "21ºC"
        return label
    }()
    
    let minTempLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = Frames.shared.mediumSmallFont
        label.textColor = UIColor.white
        label.text = "18ºC"
        return label
    }()
    
    let iconImageView = UIImageView()
    
    func configure() {
        addSubview(underView)
        underView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        underView.backgroundColor = UIColor(red: 36 / 255, green: 158 / 255, blue: 207 / 255, alpha: 1)
        underView.layer.cornerRadius = 25
        
        [dayLabel, tempLabel, minTempLabel, iconImageView].forEach {underView.addSubview($0)}
        iconImageView.center(centerXAnchor, centerYAnchor, 0, 0, Frames.shared.height * 0.1, Frames.shared.height * 0.1)
        dayLabel.anchor(topAnchor, leadingAnchor, iconImageView.topAnchor, trailingAnchor, 0, 0, 0, 0, nil, nil)
        tempLabel.anchor(iconImageView.bottomAnchor, leadingAnchor, bottomAnchor, centerXAnchor, 0, 0, 0, 5, nil, nil)
        minTempLabel.anchor(iconImageView.bottomAnchor, centerXAnchor, bottomAnchor, trailingAnchor, 0, 5, 0, 0, nil, nil)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
